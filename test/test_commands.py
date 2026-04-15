import unittest

from taranaki import client, python


class TestCommands(unittest.TestCase):
    EXAMPLES = {
        # exists
        "exists()": TypeError("wrong number of arguments for 'exists' command"),
        "exists([])": TypeError(
            "Invalid input of type: 'list'. Convert to a bytes, string, int or float first."
        ),
        "exists(key='foo')": TypeError(
            "exists() got an unexpected keyword argument 'key'"
        ),
        "delete(b'key'); exists(b'key')": 0,
        "set_(b'key', 'foo'); exists(b'key')": 1,
        "delete('key'); exists('key')": 0,
        "set_('key', 'foo'); exists('key')": 1,
        "delete(1); exists(1)": 0,
        "set_(1, 'foo'); exists(1)": 1,
        "delete(3.14); exists(3.14)": 0,
        "set_(3.14, 'π'); exists(3.14)": 1,
        "set_(1, 1); set_('foo', 2); delete(b'bar'); exists(1, 'foo', b'bar')": 2,
        "set_(1, 1); set_('foo', 2); set_(b'bar', 3); exists(1, 'foo', b'bar')": 3,
        # external functions can be assigned
        "foo = set_; foo(1, 1); exists(1)": 1,
    }

    WITH_ARGS = [
        ("cmdargv()", [], ["main.py"]),
        ("cmdargv()", ["a", "b", "c"], ["main.py", "a", "b", "c"]),
        ("cmdargv()", [1, 2, 3], ["main.py", "1", "2", "3"]),
        ("[int(x) for x in cmdargv()[1:]]", [1, 2, 3], [1, 2, 3]),
    ]

    READONLY_MODE = {
        "set_(1, 1)": NameError("name 'set_' is not defined"),
        "exists('does not exist')": 0,
    }

    def test_commands(self):
        client_instance = client.get_instance()
        for expression, value in self.EXAMPLES.items():
            if isinstance(value, Exception):
                exc_type = type(value)
                with self.assertRaises(exc_type) as cm:
                    python.py_eval(client_instance, expression)
                self.assertEqual(str(cm.exception), str(value))
            else:
                result = python.py_eval(client_instance, expression)
                self.assertEqual(result, value)

    def test_with_args(self):
        client_instance = client.get_instance()
        for expression, args, expected in self.WITH_ARGS:
            result = python.py_eval(client_instance, expression, args)
            self.assertEqual(result, expected)

    def test_commands_readonly(self):
        client_instance = client.get_instance()
        for expression, value in self.READONLY_MODE.items():
            if isinstance(value, Exception):
                exc_type = type(value)
                with self.assertRaises(exc_type) as cm:
                    python.py_eval(client_instance, expression, readonly=True)
                self.assertEqual(str(cm.exception), str(value))
            else:
                result = python.py_eval(client_instance, expression, readonly=True)
                self.assertEqual(result, value)
