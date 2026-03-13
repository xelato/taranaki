import sys
import redis


class Commander:
    def __init__(self, client):
        self.client = client
        # all commands
        self.info = client.command()

    def methods(self):
        methods = sorted(dir(self.client))
        return [m for m in methods if not m.startswith("_")]

    def with_flag(self, flag):
        return sorted([name for name in self.info if flag in self.info[name]["flags"]])

    def non_data(self):
        return sorted(
            [
                name
                for name in self.info
                if "readonly" not in self.info[name]["flags"]
                and "write" not in self.info[name]["flags"]
            ]
        )


DEF_COMMAND = """
def {name}(*args, **kwargs): ...
"""


def command_to_method(cmd):
    """Transform to avoid python keywords, builtins or stdlib modules"""
    if cmd == "set":
        return "set_"
    if cmd == "del":
        return "delete"
    if cmd == "type":
        return "type_"
    if cmd == "eval":
        return "eval_"
    if cmd == "copy":
        return "copy_"
    return cmd.replace("-", "_")


def main():
    c = Commander(client=redis.Redis())

    ro = c.with_flag("readonly")
    rw = c.with_flag("write")
    commands = sorted(set.union(set(ro), set(rw)))

    print("# this file is auto-generated")
    for command in commands:
        def_command = DEF_COMMAND.format(name=command_to_method(command)).strip()
        print(def_command)


if __name__ == "__main__":
    sys.exit(main())
