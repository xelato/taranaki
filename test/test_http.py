import unittest

from taranaki import client, python


class TestHTTP(unittest.TestCase):
    REQUESTS = {
        ("GET", "/"): {
            "method": "GET",
            "path": "/",
            "headers": {},
            "query": None,
            "args": {},
            "content": b"",
        },
        ("GET", "/path?a=1&b=2", "HEADER", "header1: value1"): {
            "method": "GET",
            "path": "/path",
            "headers": {"header1": "value1"},
            "query": "a=1&b=2",
            "args": {"a": "1", "b": "2"},
            "content": b"",
        },
        ("POST", "/", "CONTENT", b"23"): {
            "method": "POST",
            "path": "/",
            "headers": {},
            "query": None,
            "args": {},
            "content": b"23",
        },
        # arbitrary content allowed (non utf-8 encoded)
        ("PUT", "/upload", "CONTENT", b"\xff"): {
            "method": "PUT",
            "path": "/upload",
            "headers": {},
            "query": None,
            "args": {},
            "content": b"\xff",
        },
    }

    RESPONSES = {
        # 2-tuples (content, code)
        """'', 200""": [200, b'content-type: text/plain; charset=utf-8'],
        """b'', 200""": [200, b'content-type: application/octet-stream'],
        # 3-tuples (content, code, headers)
        """'Hello!', 200""": [200, b'content-type: text/plain; charset=utf-8', [b"Hello!"]],
        """b'Hello!', 200""": [200, b'content-type: application/octet-stream', [b"Hello!"]],
        """'Hello!', 200, {}""": [200, b'content-type: text/plain; charset=utf-8', [b"Hello!"]],
        """b'Hello!', 200, {}""": [200, b'content-type: application/octet-stream', [b"Hello!"]],
        """'Hello!', 200, {'content-type': 'text/plain; charset=utf-8'}""": [
            200,
            b"content-type: text/plain; charset=utf-8",
            [b"Hello!"],
        ],
        # bad format or exceptions -> 500 internal server error
        """'Hello!', 200, []""": [
            500,
            b"content-type: text/plain; charset=utf-8",
            [b"dict required for headers"],
        ],
        """raise ValueError("bad")""": [
            500,
            b"content-type: text/plain; charset=utf-8",
            [b"ValueError: bad"],
        ],
    }

    HELLO = """
def hello(r):
    if r.method != "GET":
        return "method not allowed", 405
    if r.path != "/hi":
        return "not found", 404
    return "Hello, " + r.args.get("name", "world"), 200

hello(request())
    """

    HELLO_RESPONSES = {
        ("GET", "/"): [404, b'content-type: text/plain; charset=utf-8', [b"not found"]],
        ("POST", "/hi"): [405, b'content-type: text/plain; charset=utf-8', [b"method not allowed"]],
        ("GET", "/hi"): [200, b'content-type: text/plain; charset=utf-8', [b"Hello, world"]],
        ("GET", "/hi?name=Taranaki"): [200, b'content-type: text/plain; charset=utf-8', [b"Hello, Taranaki"]],
    }

    def test_request(self):
        """Test request() function."""
        client_instance = client.get_instance()
        client_instance.set("/request", "request()")
        for args, answer in self.REQUESTS.items():
            print(args)
            x = python.py_call(client_instance, "/request", args)
            for k, v in answer.items():
                self.assertEqual(getattr(x, k), v)

    def test_response(self):
        client_instance = client.get_instance()
        for code, expected in self.RESPONSES.items():
            print(code, expected)
            client_instance.set("/code", code)
            response = python.py_http(client_instance, "/code", "GET", "/")
            self.assertEqual(response, expected)

    def test_hello(self):
        client_instance = client.get_instance()
        client_instance.set("/app/hello", self.HELLO)
        for args, expected in self.HELLO_RESPONSES.items():
            print(args)
            response = python.py_http(client_instance, "/app/hello", *args)
            self.assertEqual(response, expected)
