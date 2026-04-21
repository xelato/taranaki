"""
RESP2 protocol support.

Includes server, parser and encoder.
Encodes data and streams.
"""

import time
import sys
import socket
import inspect
import threading


class Server:
    def __init__(self, host, port, handler):
        self.host = host
        self.port = port

        self.handler = handler

        self.run_thread = None
        self.started = False

    def start(self):
        self.run_thread = threading.Thread(
            target=self.run,
            args=tuple(),
            daemon=True,
            name="main-thread",
        )
        self.run_thread.start()
        for x in range(10):
            if self.started:
                break
            time.sleep(0.5)

    def stop(self):
        self.started = False

    def run(self):
        with socket.socket(socket.AF_INET, socket.SOCK_STREAM) as srv:
            srv.setsockopt(socket.SOL_SOCKET, socket.SO_REUSEADDR, 1)
            srv.bind((self.host, self.port))
            srv.listen(128)
            print("Listening on {}:{}".format(self.host, self.port))
            self.started = True
            while self.started:
                conn, addr = srv.accept()
                t = threading.Thread(
                    target=self.handle_client,
                    args=(conn, addr),
                    daemon=True,
                    name=f"client-{addr[1]}",
                )
                t.start()

    def handle_client(self, conn: socket.socket, addr):
        remote_host, remote_port = addr
        print(f"New connection from {remote_host}:{remote_port}")
        parser = Parser()
        try:
            while True:
                data = conn.recv(4096)
                if not data:
                    break
                parser.feed(data)
                while True:
                    cmd = parser.get_command()
                    if cmd is None:
                        break
                    print("%s:%d -> %s" % (addr[0], addr[1], cmd))
                    self.process_command(cmd, conn)
                    if cmd and cmd[0].upper() == "QUIT":
                        return
        except ConnectionResetError, BrokenPipeError:
            pass
        finally:
            conn.close()

    def process_command(self, cmd, conn):
        try:
            result = self.handler(cmd)
        except Exception as e:
            conn.sendall(encode_error(str(e)))
        else:
            if inspect.isgenerator(result):
                for chunk in encode_stream(result):
                    conn.sendall(chunk)
            else:
                conn.sendall(encode(result))


class Parser:
    def __init__(self):
        self._buf = b""

    def feed(self, data: bytes):
        self._buf += data

    def get_command(self):
        """Return next parsed command (list of str) or None if incomplete."""
        if not self._buf:
            return None
        if self._buf[0:1] == b"*":
            return self._parse_array()
        return self._parse_inline()

    def _parse_inline(self):
        idx = self._buf.find(b"\r\n")
        if idx == -1:
            return None
        line = self._buf[:idx].decode(errors="replace")
        self._buf = self._buf[idx + 2 :]
        return line.split()

    def _parse_array(self):
        idx = self._buf.find(b"\r\n")
        if idx == -1:
            return None
        count = int(self._buf[1:idx])
        pos = idx + 2
        elements = []
        for _ in range(count):
            if pos >= len(self._buf):
                return None
            if self._buf[pos : pos + 1] != b"$":
                return None
            end = self._buf.find(b"\r\n", pos)
            if end == -1:
                return None
            length = int(self._buf[pos + 1 : end])
            start = end + 2
            if start + length + 2 > len(self._buf):
                return None
            elements.append(self._buf[start : start + length].decode(errors="replace"))
            pos = start + length + 2
        self._buf = self._buf[pos:]
        return elements


def encode_object(obj: object) -> bytes:
    if obj is None:
        return encode_bulk_string(None)

    if isinstance(obj, int):
        return encode_integer(obj)

    if isinstance(obj, str) or isinstance(obj, bytes):
        return encode_bulk_string(obj)

    if isinstance(obj, list) or isinstance(obj, tuple) or isinstance(obj, set):
        return encode_array(obj)

    raise TypeError("unsupported type: {}", type(obj))


def encode_error(msg: str) -> bytes:
    if isinstance(msg, str):
        return f"-ERR {msg}\r\n".encode("utf-8")
    raise TypeError("unsupported type: {}", type(msg))


def encode_integer(n: int) -> bytes:
    if not isinstance(n, int):
        raise TypeError("unsupported type: {}", type(n))
    return f":{n}\r\n".encode()


def encode_simple_string(s) -> bytes:
    if isinstance(s, bytes):
        if b"\r" in s or b"\n" in s:
            raise ValueError(r"simple string cannot contain \r or \n")
        return b"+" + s + b"\r\n"

    if isinstance(s, str):
        return encode_simple_string(s.encode("utf-8"))

    raise TypeError("unsupported type: {}", type(s))


def encode_bulk_string(s) -> bytes:
    if s is None:
        return b"$-1\r\n"
    if isinstance(s, bytes):
        b = s
    elif isinstance(s, str):
        b = s.encode("utf-8")
    else:
        raise TypeError("unsupported type: {}", type(s))
    return f"${len(b)}\r\n".encode() + b + b"\r\n"


def encode_array(items) -> bytes:
    if items is None:
        return b"*-1\r\n"
    parts = [f"*{len(items)}\r\n".encode()]
    for item in items:
        parts.append(encode_object(item))
    return b"".join(parts)


def encode_stream(stream):
    """Encodes a stream of data into a stream of output bytes.

    Decoded as a single object, it will be represented as nested 2-element arrays,
    where the first element is a data item and the second is the next nested array.
    [
        item1, [
            item2, [
                item3, []
            ]
        ]
    ]

    If the stream is empty the output represents an empty array.
    """
    for item in stream:
        # header for an array of length 2
        yield b"*2\r\n"

        # data chunk
        yield encode_object(item)

    # complete response with an empty array
    # this makes the whole byte stream a valid RESP
    yield b"*0\r\n"


def encode(obj: object) -> bytes:
    """Encode an object"""
    return encode_object(obj)


def decode(data: bytes) -> object:
    """Decode an object"""
    parser = Parser()
    parser.feed(data)
    return parser.get_command()


def serve(host, port, handler):
    server = Server(host=host, port=port, handler=handler)
    server.run()


def main():
    def turtles():
        yield "Turtles"
        time.sleep(0.5)
        yield "all"
        time.sleep(0.5)
        yield "the way"
        time.sleep(0.5)
        yield "down..."

    def printer(stream):
        for item in stream:
            print(item)
            yield item

    def handler(command):
        cmd = command[0].upper()
        if cmd == "PING":
            return "PONG"
        elif cmd == "ECHO":
            return command
        elif cmd == "TURTLES":
            return printer(turtles())
        elif cmd == "HELLO":
            return "Hi!"
        elif cmd == "COMMAND":
            return 42
        raise Exception(f"unknown command: {cmd}")

    serve(host="127.0.0.1", port=6379, handler=handler)


if __name__ == "__main__":
    sys.exit(main())
