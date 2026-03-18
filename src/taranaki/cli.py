import click

from . import client
from . import wasm
from . import python
from . import serve_ngrok
from .util import cli_error_handler


@click.group()
@click.option(
    "--host", default="localhost", help='instance hostname (default "localhost")'
)
@click.option("--port", default=6379, help="instance port (default 6379)")
@click.option("--db", default=0, help="instance db number (default 0)")
@click.option("--url", default="", help="configure with url")
def cli(host, port, db, url):
    client.configure(host=host, port=port, db=db, url=url)


@cli.command(name="eval", help="Evaluate Python expression")
@click.argument("expression", required=True)
@cli_error_handler
def py_eval(expression):
    print(python.py_eval(client.get_instance(), expression))


@cli.command(name="wasm", help="Invoke wasm function")
def wa_eval():
    r = client.get_instance()
    c = wasm.WasmClient(r)

    with open("wasm/gcd.wasm", "rb") as f:
        data = f.read()

    c.wasm_load_bytes(key="/wasm/gcd", wasm_bytes=data)
    c.wasm_info(key="/wasm/gcd")
    c.wasm_call("/wasm/gcd", "gcd", 15, 24)


@cli.command(name="ngrok", help="Serve with ngrok")
@click.argument("key", required=True)
@cli_error_handler
def ngrok(key):
    serve_ngrok.run(key)
