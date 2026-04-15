import unittest

from taranaki import client, python


class TestPython(unittest.TestCase):
    SUPPORTED = [
        "None",
        "True",
        "False",
        "...",
        "1",
        "3.14",
        '"Hello, 🐍"',
        "[]",
        "list()",
        "tuple()",
        "set()",
        "frozenset()",
        "{}",
        "{1, 2, 3}",
        "dict()",
        "float(3.14)",
        "float('inf')",
        "float('-inf')",
        "{1:2, 'three': [4]}",
        "set([1,2,3])",
        "frozenset([4,5,6])",
        "bytes('hello!'.encode('utf8'))",
        "[x**2 for x in range(1, 10)]",
        "list(map(lambda x: x**2, range(1, 10)))",
        "ValueError('foo').args",  # Exception instances cannot be compared, compare args instead
    ]

    UNSUPPORTED = [
        "object",
        "eval('2+2')",  # eval
        "1+2j",  # complex numbers
        "int|str",  # union
        "'hello!'.encode('ascii')",  # ascii encoding
    ]

    EXCEPTIONS = {
        "1/0": ZeroDivisionError,
        "a=b": NameError,
        "(": SyntaxError,
        "raise ValueError": ValueError,
        "raise ValueError()": ValueError,
        "raise ValueError('')": ValueError,
        "raise ValueError('foo')": ValueError,
        "2+'foo'": TypeError,
        "assert False is True": AssertionError,
        "str.foo": AttributeError,
        "from sys import foo": ImportError,
        "import foo": ModuleNotFoundError,
        "[][1]": IndexError,
        "{}['foo']": KeyError,
    }

    def test_py_eval(self):
        client_instance = client.get_instance()
        for expression in self.SUPPORTED:
            result = python.py_eval(client_instance, expression)
            self.assertEqual(result, eval(expression))

    def test_unsupported(self):
        client_instance = client.get_instance()
        for expression in self.UNSUPPORTED:
            # works in CPython
            print(expression)
            eval(expression)
            # but not in Monty
            with self.assertRaises(Exception):
                python.py_eval(client_instance, expression)

    def test_raises(self):
        client_instance = client.get_instance()
        for expression, exc_type in self.EXCEPTIONS.items():
            with self.assertRaises(exc_type):
                python.py_eval(client_instance, expression)
