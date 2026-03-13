import taranaki
from taranaki.compat import set_, scan, dbsize, mget, get


@taranaki.function()
def sum_all_keys():
    """Get the sum of all number values in the db"""
    total = 0
    cursor = 0
    while True:
        cursor, keys = scan(cursor, count=999)
        for value in mget(*keys):
            try:
                total += int(value)
            except ValueError:
                pass
        if int(cursor) == 0:
            break

    return total


@taranaki.function()
def sum_keys(*keys):
    return sum(int(get(key)) for key in keys)


@taranaki.function()
def init_db():
    """Initialize the db with the squares of first 1 million numbers."""
    for x in range(1_000_000):
        set_(x, x**2)
    return dbsize()


def main():
    print("num keys:", init_db())
    print("total:", sum_all_keys())


if __name__ == "__main__":
    main()
