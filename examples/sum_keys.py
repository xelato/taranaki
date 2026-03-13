import taranaki
from taranaki.compat import get, set_, scan, keys, dbsize, time


@taranaki.function()
def sum_all_keys():
    """Get the sum of all number values"""
    total = 0
    for key in keys("*"):
        try:
            total += int(get(key))
        except ValueError:
            pass
    return total


@taranaki.function()
def sum_all_scan():
    """Get the sum of all number values"""
    start = time()
    total = 0
    cursor = 0
    while True:
        cursor, keys = scan(cursor, 100)
        for key in keys:
            try:
                total += int(get(key))
            except ValueError:
                pass
        if cursor == 0:
            break

    end = time()

    return total, start, end


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
