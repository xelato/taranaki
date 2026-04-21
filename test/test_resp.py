import unittest

import resp2
import redis


class TestRESP2(unittest.TestCase):
    def test_resp2(self):
        self.assertEqual(resp2.encode([]), b"*0\r\n")
        self.assertEqual(resp2.encode(None), b"$-1\r\n")
        self.assertEqual(resp2.encode(42), b":42\r\n")
        self.assertEqual(resp2.encode_simple_string(""), b"+\r\n")
        self.assertEqual(resp2.encode_simple_string(b""), b"+\r\n")
        self.assertEqual(resp2.encode_simple_string("foo"), b"+foo\r\n")
        self.assertEqual(resp2.encode_bulk_string("bar"), b"$3\r\nbar\r\n")

    def test_chunked(self):

        def chunk_generator():
            yield "chunk0"
            yield "chunk1"
            yield "chunk2"

        expected = (
            b"*2\r\n$6\r\nchunk0\r\n*2\r\n$6\r\nchunk1\r\n*2\r\n$6\r\nchunk2\r\n*0\r\n"
        )

        chunk_bytes = b"".join(resp2.encode_stream(chunk_generator()))
        self.assertEqual(chunk_bytes, expected)

        def handler(command):
            cmd = command[0].upper()
            if cmd == "CHUNKS":
                return chunk_generator()
            elif cmd == "NOCHUNKS":
                # empty generator
                return (x for x in [])
            return 42

        host, port = "127.0.0.1", 9736
        server = resp2.Server(host=host, port=port, handler=handler)
        server.start()

        client = redis.Redis(host=host, port=port, db=0, protocol=2)
        self.assertEqual(
            client.execute_command("CHUNKS"), [b"chunk0", [b"chunk1", [b"chunk2", []]]]
        )
        self.assertEqual(client.execute_command("NOCHUNKS"), [])

        client = redis.Redis(
            host=host, port=port, db=0, protocol=2, decode_responses=True
        )
        self.assertEqual(
            client.execute_command("CHUNKS"), ["chunk0", ["chunk1", ["chunk2", []]]]
        )

        server.stop()
