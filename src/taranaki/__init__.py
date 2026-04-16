import importlib.metadata

try:
    __version__ = importlib.metadata.version("taranaki")
except importlib.metadata.PackageNotFoundError:
    __version__ = "0.0.0"

from .serverless import function as function
from .client import configure as configure
