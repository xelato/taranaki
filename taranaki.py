#!/usr/bin/env -S uv run --with redis  --script

import redis
import base64


class Client:
    def __init__(self, redis_client):
        self.r = redis_client

    def wasm_load_bytes(self, key, wasm_bytes):
        if not isinstance(wasm_bytes, bytes):
            raise ValueError('bytes required')

        command = 'wasm.load {} {}'.format(
            key,
            base64.b64encode(wasm_bytes).decode('ascii'))
        print(">", command[:20])

        res = self.r.execute_command(command)
        print(res)
        print()

    def wasm_info(self, key):
        # custom command
        command = 'wasm.info /wasm/gcd'
        print(">", command)
        res = self.r.execute_command(command)
        print(res)
        print()

    def wasm_call(self, key, func_name, *args):
        command = 'wasm.call {} {}'.format(key, func_name)
        if args:
            command = "{} {}".format(command, " ".join(str(x) for x in args))
        print(">", command)
        res = self.r.execute_command(command)
        print(res)
        print()
        return res


def main():
    r = redis.Redis(host='localhost', port=6379, db=0)
    c = Client(r)

    with open("wasm/gcd.wasm", 'rb') as f:
        data = f.read()

    c.wasm_load_bytes(key="/wasm/gcd", wasm_bytes=data)
    c.wasm_info(key="/wasm/gcd")
    c.wasm_call("/wasm/gcd", "gcd", 15, 24)


if __name__ == "__main__":
    main()
