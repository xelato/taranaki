import fastapi
import uvicorn

import json

from . import python
from . import client


class Proxy:
    def __init__(self, key):
        self.app = fastapi.FastAPI()
        self.proxy = self.app.api_route(
            "/{path:path}", methods=["GET", "POST", "PUT", "DELETE", "PATCH", "QUERY"]
        )(self.proxy)

        # deployed key of target app
        self.key = key

        self.instance = client.get_instance()

    def run(self, host="127.0.0.1", port=8080):
        config = uvicorn.Config(app=self.app, host=host, port=port)
        self.server = uvicorn.Server(config=config)
        self.server.run()

    async def proxy(self, request: fastapi.Request, path: str):
        url = request.url.components
        headers = dict(request.headers)
        content = await request.body()
        if url.query:
            target_url = "{}?{}".format(url.path, url.query)
        else:
            target_url = url.path

        print("{} {}".format(request.method, target_url))
        print("headers:", headers)
        print("content", content)

        try:
            resp = python.py_http(
                self.instance,
                key=self.key,
                method=request.method,
                url=target_url,
                headers=headers,
                content=content,
            )
            print(resp)

        except Exception as e:
            return fastapi.Response(
                content=json.dumps({"error": str(e)}),
                status_code=500,
                media_type="application/json",
            )

        return self.build_response(resp)

    def build_response(self, resp):
        status_code = resp[0]
        headers = {}
        content = None
        for item in resp[1:]:
            text = None

            if isinstance(item, bytes):
                text = item.decode("utf-8")
            elif isinstance(item, str):
                text = item
            elif isinstance(item, list):
                content = item[0]
            else:
                raise Exception("error in processing RESPonse")

            if text is not None:
                name, value = text.split(":", 1)
                name = name.rstrip()
                value = value.lstrip()
                headers[name] = value

        return fastapi.Response(
            status_code=status_code,
            headers=headers,
            content=content,
        )
