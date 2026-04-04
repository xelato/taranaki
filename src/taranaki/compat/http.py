"""
HTTP request processing in Taranaki.

An HTTP "request" is simply a command invocation with special signature for encoding HTTP request parameters:
<method> <url> [HEADER <name>:<value>] [CONTENT <content>]

It is expected that the code/function responding will interpret those as `HTTPRequest` and return an appropriate `HTTPResponse`. To do so, such code can be assisted by the special platform functions `request()` and `response()`. Any exceptions raised during processing of the request will be converted to a 503-style `HTTPResponse` under the `PY.HTTP` command invocation.

Code needs to be saved to a key before sending a request.

127.0.0.1:6379> SET <key> <code>
127.0.0.1:6379> PY.HTTP <key> <method> <url> [HEADER <name>:<value>] [CONTENT <content>]

# Hello, world!

## Deploy to a key
127.0.0.1:6379> SET /app/hello "r=request(); response(200, text='Hello, ' + r.args['name'])"

## Invoke by key
127.0.0.1:6379> PY.HTTP /app/hello GET /hello?name=World
127.0.0.1:6379> PY.HTTP /app/hello GET /hello?name=Taranaki
"""

import sys
from collections import namedtuple
from typing import Dict, Any
from json import dumps as json_dumps

HTTPRequest = namedtuple(
    "HTTPRequest",
    [
        "method",  # normalized in uppercase
        "url",
        "headers",  # A header is a case-insensitive name followed by a colon, then optional whitespace which will be ignored, and finally by its value
        "content",
        # todo: derived url fields
        # todo: derived content fields
    ],
)

HTTPResponse = namedtuple(
    "HTTPResponse",
    [
        "status_code",
        "reason",
        "headers",
        "body",
    ],
)


def request(argv=None) -> HTTPRequest:
    """
    Parse request from command arguments.
    Implemented in server module. This implementation is for compatibility when running locally.
    """

    # app_key = None
    method = None
    url = None
    headers = {}
    content = None

    if argv is None:
        # server implementation will read command arguments
        argv = sys.argv

    if len(argv) < 3:
        raise TypeError("Insufficient number of arguments provided")

    # read option key or its value
    flag, key, value = True, None, None
    for idx, arg in enumerate(argv):
        if idx == 0:
            # app_key = arg
            continue

        elif idx == 1:
            # normalize method name to uppercase
            method = arg.upper()
            if method not in METHODS:
                raise ValueError("unknown method: {}".format(method))
            continue

        elif idx == 2:
            url = arg
            continue

        if flag:
            # read option key
            key = arg.lower()
            value = None
            if key not in {"header", "content"}:
                raise ValueError("unknown key at position {}: {}".format(idx, key))
        else:
            # read option value
            value = arg

            if key == "header":
                if ":" in value:
                    header_name, header_value = value.split(":", 1)
                    # optional whitespace around :
                    header_name = header_name.rstrip()
                    header_value = header_value.lstrip()
                else:
                    header_name, header_value = value, None
                # normalize header name to lowercase
                headers[header_name.lower()] = header_value
            elif key == "content":
                if content is not None:
                    raise TypeError("content specified more than once")
                content = value

        # change mode for next key
        flag = not flag

    # end loop
    if key is not None and value is None:
        raise TypeError("options key without a value")

    # todo: url validation
    # todo: derived url fields
    # todo: derived content fields

    return HTTPRequest(
        method=method,
        url=url,
        headers=headers,
        content=content,
    )


def response(
    status_code: int,
    *,
    reason: str = None,
    headers: Dict[str, str] = None,
    content: bytes | str = None,
    text: str = None,
    html: str = None,
    json: Any = None,
) -> HTTPResponse:
    """
    Build a response from either `content`, `text`, `html` or `json`.
    Implemented in server module. This implementation is for compatibility when running locally.
    """
    _headers = {}
    if headers:
        _headers.update(headers)

    body = b""

    if content:
        if isinstance(content, bytes):
            body = content
        elif isinstance(content, str):
            body = content.encode("utf-8")
        else:
            raise TypeError("invalid type")

    elif text:
        if not isinstance(text, str):
            raise TypeError("invalid type")
        body = text.encode("utf-8")
        _headers["Content-Type"] = "text/plain; charset=utf-8"

    elif html:
        if not isinstance(html, str):
            raise TypeError("invalid type")
        body = html.encode("utf-8")
        _headers["Content-Type"] = "text/html; charset=utf-8"

    elif json:
        body = json_dumps(
            json, ensure_ascii=False, separators=(",", ":"), allow_nan=False
        ).encode("utf-8")
        _headers["Content-Type"] = "application/json"

    if body:
        _headers["Content-Length"] = str(len(body))

    return HTTPResponse(
        status_code=int(status_code),
        reason=reason or REASONS.get(int(status_code), ""),
        headers=_headers or {},
        body=body,
    )


def redirect(location, *, status_code=None) -> HTTPResponse:
    """Return an HTTP redirect response."""
    if status_code and status_code not in {301, 302, 303, 307, 308}:
        raise ValueError("invalid redirect code")
    return response(status_code or 301, headers={"Location": location})


METHODS = frozenset({"GET", "POST", "PUT", "PATCH", "DELETE", "OPTIONS", "HEAD"})

REASONS = {
    100: "Continue",
    101: "Switching Protocols",
    102: "Processing",
    103: "Early Hints",
    200: "OK",
    201: "Created",
    202: "Accepted",
    203: "Non-Authoritative Information",
    204: "No Content",
    205: "Reset Content",
    206: "Partial Content",
    207: "Multi-Status",
    208: "Already Reported",
    226: "IM Used",
    300: "Multiple Choices",
    301: "Moved Permanently",
    302: "Found",
    303: "See Other",
    304: "Not Modified",
    307: "Temporary Redirect",
    308: "Permanent Redirect",
    400: "Bad Request",
    401: "Unauthorized",
    402: "Payment Required",
    403: "Forbidden",
    404: "Not Found",
    405: "Method Not Allowed",
    406: "Not Acceptable",
    407: "Proxy Authentication Required",
    408: "Request Timeout",
    409: "Conflict",
    410: "Gone",
    411: "Length Required",
    412: "Precondition Failed",
    413: "Content Too Large",
    414: "URI Too Long",
    415: "Unsupported Media Type",
    416: "Range Not Satisfiable",
    417: "Expectation Failed",
    418: "I'm a teapot",
    421: "Misdirected Request",
    422: "Unprocessable Content",
    423: "Locked",
    424: "Failed Dependency",
    425: "Too Early",
    426: "Upgrade Required",
    428: "Precondition Required",
    429: "Too Many Requests",
    431: "Request Header Fields Too Large",
    451: "Unavailable For Legal Reasons",
    500: "Internal Server Error",
    501: "Not Implemented",
    502: "Bad Gateway",
    503: "Service Unavailable",
    504: "Gateway Timeout",
    505: "HTTP Version Not Supported",
    506: "Variant Also Negotiates",
    507: "Insufficient Storage",
    508: "Loop Detected",
    510: "Not Extended",
    511: "Network Authentication Required",
}


def main():
    res = response(
        200,
        headers={"Server": "example.com"},
        text="Hello!",
    )
    print(res)
    moved = redirect(location="https://example.com")
    print(moved)

    req = request(
        [
            "/app/httpbin",
            "GET",
            "/hello?name=World",
            "HEADER",
            "name1:value1",
            "HEADER",
            "name2: value2",
            "CONTENT",
            "the content",
        ]
    )
    print(req)


if __name__ == "__main__":
    main()
