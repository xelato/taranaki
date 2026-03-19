import click

from . import client
from . import wasm
from . import python
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
@click.argument("args", nargs=-1, type=click.UNPROCESSED)
@cli_error_handler
def py_eval(expression, args):
    print(python.py_eval(client.get_instance(), expression, args))


@cli.command(name="wasm", help="Invoke wasm function")
def wa_eval():
    r = client.get_instance()
    c = wasm.WasmClient(r)

    with open("wasm/gcd.wasm", "rb") as f:
        data = f.read()

    c.wasm_load_bytes(key="/wasm/gcd", wasm_bytes=data)
    c.wasm_info(key="/wasm/gcd")
    c.wasm_call("/wasm/gcd", "gcd", 15, 24)
