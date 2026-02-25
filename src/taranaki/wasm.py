import base64


class WasmClient:
    def __init__(self, redis_client):
        self.r = redis_client

    def wasm_load_bytes(self, key, wasm_bytes):
        if not isinstance(wasm_bytes, bytes):
            raise ValueError("bytes required")

        command = "wasm.load {} {}".format(
            key, base64.b64encode(wasm_bytes).decode("ascii")
        )
        print(">", command[:20])

        res = self.r.execute_command(command)
        print(res)
        print()

    def wasm_info(self, key):
        # custom command
        command = "wasm.info /wasm/gcd"
        print(">", command)
        res = self.r.execute_command(command)
        print(res)
        print()

    def wasm_call(self, key, func_name, *args):
        command = "wasm.call {} {}".format(key, func_name)
        if args:
            command = "{} {}".format(command, " ".join(str(x) for x in args))
        print(">", command)
        res = self.r.execute_command(command)
        print(res)
        print()
        return res
