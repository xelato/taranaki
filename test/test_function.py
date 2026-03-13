import unittest

import taranaki


@taranaki.function()
def gcd(a: int, b: int) -> int:
    """Compute the Greatest Common Divisor of two integers."""
    while b:
        a, b = b, a % b
    return abs(a)


GCD_CODE = """
def gcd(a: int, b: int) -> int:
    while b:
        a, b = (b, a % b)
    return abs(a)
"""

GCD_SNIPPET = """
def gcd(a: int, b: int) -> int:
    while b:
        a, b = (b, a % b)
    return abs(a)
gcd(10, 25)
"""


class TestFunction(unittest.TestCase):
    def test_function(self):
        # runs remotely
        self.assertEqual(gcd(10, 25), 5)

        # runs locally
        self.assertEqual(gcd.parent.function(10, 25), 5)

        # internals
        self.assertEqual(gcd.parent.function_name, "gcd")
        self.assertEqual(gcd.parent.function_code, GCD_CODE.strip())
        self.assertEqual(gcd.parent.get_snippet(10, 25), GCD_SNIPPET.strip())
