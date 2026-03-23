import unittest

from taranaki import client, python
from collections import namedtuple


class TestNT(unittest.TestCase):
    EXAMPLES = {
        "nt()": TypeError(
            "nt() requires at least one positional argument but none were given"
        ),
        "point = nt('Point', 'x', 'y', x=2, y=3); (point.x, point.y)": (2, 3),
    }

    READONLY_MODE = {
        "point = nt('Point', 'x', 'y', x=2, y=3); point.x + point.y": 5,
    }

    def test_nt(self):
        examples = [
            "nt('Point', 'x', 'y', x=2, y=3)",
            "nt('Point', 'x', 'y', x=3, y=2)",
            "Point = lambda x, y: nt('Point', 'x', 'y', x=x, y=y); Point(1, 4)",
        ]
        Point = namedtuple("Point", ["x", "y"])
        signature = ("Point", "x", "y")
        # predefined or not
        for predefined in (False, True):
            # start clean
            python.nt.reset()
            # add predefined NT type to registry
            if predefined:
                python.nt.add_type(Point)

            point_type = Point if predefined else python.nt.get_type(signature)
            self.assertEqual(python.nt.get_type(signature), point_type)

            # deserialize NT instances
            client_instance = client.get_instance()
            for example in examples:
                point = python.py_eval(client_instance, example)
                assert isinstance(point, point_type)
                assert isinstance(point, tuple)
                self.assertEqual(point.x + point.y, 5)

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
