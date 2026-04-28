import sys
import importlib.metadata
import click

from . import client
from . import python
from . import proxy
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


@cli.command(help="Print version")
def version():
    try:
        version = importlib.metadata.version("taranaki")
    except importlib.metadata.PackageNotFoundError:
        version = "0.0.0"
    print(version)


@cli.command(name="proxy", help="Run HTTP-to-RESP proxy")
@click.option("--key", required=True, help="app key")
@click.option("--proxy-port", default=8080, help="proxy port")
@cli_error_handler
def proxy_serve(key, proxy_port):
    print("Proxy to {}".format(key))
    p = proxy.Proxy(key=key)
    p.run(port=proxy_port)


@cli.command(name="deploy", help="Deploy to key")
@click.option("--key", required=True, help="app key")
@click.argument("file", required=False, type=click.UNPROCESSED)
@cli_error_handler
def deploy(key, file):
    if sys.stdin.isatty():
        if not file:
            raise TypeError("file required")
        with open(file, "r") as f:
            content = f.read()
    else:
        if file:
            raise TypeError("file specified but reading from stdin")
        # read content from standard input
        content = sys.stdin.read()

    resp_client = client.get_instance()
    resp_client.set(key, content)
