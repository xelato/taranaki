import importlib.metadata
import click

from . import client
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
@click.argument("args", nargs=-1, type=click.UNPROCESSED)
@cli_error_handler
def py_eval(expression, args):
    print(python.py_eval(client.get_instance(), expression, args))


@cli.command(name="ngrok", help="Serve with ngrok")
@click.argument("key", required=True)
@cli_error_handler
def ngrok(key):
    serve_ngrok.run(key)


@cli.command(help="Print version")
def version():
    try:
        version = importlib.metadata.version("taranaki")
    except importlib.metadata.PackageNotFoundError:
        version = "0.0.0"
    print(version)
