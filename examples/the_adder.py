"""
A snake walks into a remote dictionary server.
It sums all the ints and floats.
Turns out it's an adder.
"""

import taranaki
from taranaki.compat.commands import set_, scan, dbsize, mget, expire


@taranaki.function()
def the_adder():
    total, cursor = 0, 0
    while True:
        cursor, keys = scan(cursor, count=999)
        values = mget(*keys)
        for index, value in enumerate(values):
            try:
                total += int(value)
            except ValueError:
                continue
            # In the dead of bytes snake bites, snake bites.
            expire(keys[index], 1000)
        if int(cursor) == 0:
            break
    set_("/total", total)
    return total


@taranaki.function()
def init_db():
    """Initialize db."""
    for x in range(1_000_000):
        set_(x, x**2)
    return dbsize()


def main():
    print("num keys:", init_db())
    print("total:", the_adder())


if __name__ == "__main__":
    the_adder()
