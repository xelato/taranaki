"""
Run Python at a remote Taranaki-enabled instance.
"""


def py_eval(redis_client, expression: str) -> object:
    """Evaluate python expression at a remote Taranaki-enabled instance.

    Return the result as a python object.
    """
    return convert(redis_client.execute_command("PY.EVAL", expression))


def convert(value: object):
    """Convert a value to Python object.

    At this point, the incoming value has undergone several transformations
    - converted from MontyObject to RedisValue in the server instance
        * this is where the envelope format was applied
    - serialized to binary according to protocol specification on the "wire" (either RESP2 or RESP3)
    https://redis.io/docs/latest/develop/reference/protocol-spec/
        The connection is required to use protocol version 3 as it has a wider variety of types.
    - converted back to object from binary format in redis client according to its rules
    -> this step: apply in reverse - open evelopes, etc.
    """

    # envelope
    if isinstance(value, list):
        # list is always used as envelope
        if len(value) == 0:
            # empty envelope
            raise ProtocolError(value)

        name = value[0]
        if isinstance(name, bytes):
            # may come as bytes due to encoding specifics
            name = name.decode("ascii")

        if len(value) == 1:
            if name in SINGLE_TYPE_OR_INSTANCE:
                return SINGLE_TYPE_OR_INSTANCE.get(name)
            raise ProtocolError(value)

        elif len(value) == 2:
            if name == "bytes":
                if not isinstance(value[1], bytes):
                    raise ProtocolError(value)
                return value[1]
            elif name == "dict":
                return dict((convert(k), convert(v)) for (k, v) in value[1])
            elif name in SEQUENCE_TYPES:
                return SEQUENCE_TYPES[name](convert(x) for x in value[1])
            raise ProtocolError(value)

    # str
    elif isinstance(value, bytes):
        # those originated as strings and were utf8 encoded
        return value.decode("utf8")

    # None, int, float, bool, bigint(as int)
    return value


class ProtocolError(Exception):
    def __init__(self, value):
        self.value = value

    def __str__(self):
        return "cannot decode: {}".format(self.value)


SEQUENCE_TYPES = {
    "list": list,
    "tuple": tuple,
    "set": set,
    "frozenset": frozenset,
}

SINGLE_TYPE_OR_INSTANCE = {
    "ellipsis": ...,
}
