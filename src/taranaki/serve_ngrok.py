import os
import ngrok
import aiohttp
from aiohttp import web

from . import client
from . import python
from .compat import http


class AIOHTTPServer:
    def __init__(self, key):
        self.app = self.build_app()
        self.key = key

    def build_app(self):
        app = web.Application()
        app.add_routes(
            [
                web.get("/{tail:.*}", self.handle),
                web.post("/{tail:.*}", self.handle),
                web.put("/{tail:.*}", self.handle),
                web.patch("/{tail:.*}", self.handle),
                web.options("/{tail:.*}", self.handle),
            ]
        )
        return app

    def run(self, listener):
        web.run_app(self.app, sock=listener)

    async def handle(self, request: aiohttp.web_request.Request):
        http_request = await self.from_aiohttp(request)
        http_response = python.py_http(
            client.get_instance(), key=self.key, request=http_request
        )
        return self.to_aiohttp(http_response)

    async def from_aiohttp(
        self, request: aiohttp.web_request.Request
    ) -> http.HTTPRequest:
        return http.HTTPRequest(
            method=request.method,
            url=str(request.url),
            headers=request.headers,
            content=await request.read(),
        )

    def to_aiohttp(self, response: http.HTTPResponse) -> aiohttp.web_response.Response:
        print(response)
        return web.Response(
            status=response.status_code,
            reason=response.reason,
            headers=response.headers,
            body=response.body,
        )


def run(key: str):
    """Drive HTTP traffic to the app deployed at `key`."""

    #builder = ngrok.HttpListenerBuilder(domain=os.environ.get('NGROK_DOMAIN'))
    #print(builder, type(builder))
    #print(dir(builder))
    # ngrok.set_auth_token(token)

    listener = ngrok.listen()
    # listener = ngrok.default()
    print(f"Ingress established at {listener.url()}")

    server = AIOHTTPServer(key=key)
    server.run(listener)
