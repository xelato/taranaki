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
        "exists(b'key')": 0,
        "exists('key')": 0,
        "exists(1)": 0,
        "exists(3.14)": 0,
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
