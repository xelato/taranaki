import sys
import functools


class cli_error_handler(object):
    """Decorator for CLI error handling"""

    def __init__(self, func):
        self.func = func
        functools.update_wrapper(self, func)

    def __call__(self, *args, **kwargs):
        try:
            return self.func(*args, **kwargs)
        except Exception as e:
            sys.stderr.write("{}: {}\n".format(str(e.__class__.__name__), str(e)))
            sys.exit(1)
