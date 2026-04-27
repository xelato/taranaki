import importlib.metadata

try:
    __version__ = importlib.metadata.version("taranaki")
except importlib.metadata.PackageNotFoundError:
    __version__ = "0.0.0"

from .serverless import function as function

# use as taranaki.configure()
from .client import configure as configure

# use as taranaki.cli()
from .cli import cli as cli
