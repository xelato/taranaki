"""
Remote execution for local Python functions.
"""

import ast
import inspect
import textwrap
import functools

from . import python
from .client import get_instance


EVAL_INVOCATION = """
{source}
{name}({params})
"""


class function(object):
    """Serverless function decorator.

    Functions decorated with @taranaki.function() will execute remotely.
    Such functions have access to the commands of the remote dictionary server.

    import taranaki
    from taranaki.compat import get

    @taranaki.function
    def sum_all(key1, key2):
        return get(key1) + get(key2)
    """

    class wrapper(object):
        def __init__(self, parent):
            self.parent = parent

        def __call__(self, *args, **kwargs):
            return self.parent.invoke(*args, **kwargs)

    def __init__(self, **params):
        # configure
        self.initialize(**params)

        # original function
        self.function = None
        # function name
        self.function_name = None
        # transformed function code
        self.function_code = None

    def __call__(self, func):
        """decorate function"""

        if not inspect.isfunction(func):
            raise TypeError("not a function")
        if inspect.isgeneratorfunction(func):
            raise NotImplementedError("Generators are not supported (yet)")
        if inspect.iscoroutinefunction(func):
            raise NotImplementedError("Async functions are not supported (yet)")
        if inspect.isasyncgenfunction(func):
            raise NotImplementedError("Async generators are not supported (yet)")

        self.function = func
        self.function_name = func.__name__
        self.function_code = self.get_function_code(func)

        # the object that will proxy function calls
        wrapper = self.wrapper(parent=self)
        functools.update_wrapper(wrapper, func)
        return wrapper

    def initialize(self, persist=False):
        self.persist = persist

    def invoke(self, *args, **kwargs):
        if self.persist:
            raise NotImplementedError("persisting a function is not supported (yet)")

        params = []
        for arg in args:
            params.append(repr(arg))
        for k, v in kwargs:
            params.append("{}={}".format(k, repr(v)))

        snippet = EVAL_INVOCATION.format(
            source=self.function_code,
            name=self.function_name,
            params=", ".join(params),
        ).strip()

        # invoke remotely
        client = get_instance()
        return python.py_eval(client, snippet)

    def get_function_code(self, func):
        # raw function source
        source = inspect.getsource(func)
        # unindent if necessary
        source = textwrap.dedent(source)

        tree = ast.parse(source)

        # remove decorator
        self.remove_decorator(tree)

        # remove docstring
        self.remove_docstring(tree, func)

        source = ast.unparse(tree)
        return source.strip()

    def get_function_node(self, tree):
        for node in ast.walk(tree):
            if isinstance(node, ast.FunctionDef):
                return node
        return None

    def remove_decorator(self, tree):
        fnode = self.get_function_node(tree)
        if fnode:
            # remove ALL decorators
            fnode.decorator_list = []

    def remove_docstring(self, tree, func):
        if not func.__doc__:
            return
        fnode = self.get_function_node(tree)
        if not fnode or not fnode.body:
            return
        docstr = fnode.body[0]
        if isinstance(docstr, ast.Expr):
            if isinstance(docstr.value, ast.Constant):
                if func.__doc__.startswith(docstr.value.value.lstrip().split("\n")[0]):
                    del fnode.body[0]
