import taranaki
from taranaki.compat import get, set_, exists


@taranaki.function()
def collatz(x):
    """Calculate total stopping time of a number.
    https://oeis.org/A006577
    """
    n = x
    count = 0
    while x > 1:
        if exists(x):
            count = count + int(get(x))
            break
        if x % 2 == 0:
            x = x / 2
        else:
            x = 3 * x + 1
        count += 1
    set_(n, count)
    return count


def main():
    for x in range(1, 100):
        print(x, collatz(x))


if __name__ == "__main__":
    main()
