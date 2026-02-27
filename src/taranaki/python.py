"""
Run Python at a remote Taranaki-enabled instance.
"""

import builtins


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

        if len(value) == 1:
            name = maybe_bytes(value[0])
            if name in SINGLE_TYPE_OR_INSTANCE:
                return SINGLE_TYPE_OR_INSTANCE.get(name)
            raise ProtocolError(value)

        elif len(value) == 2:
            return convert_envelope(value)

        raise ProtocolError(value)

    # str
    if isinstance(value, bytes):
        # those originated as strings and were utf8 encoded
        return value.decode("utf8")

    # None, int, float, bool, bigint(as int)
    return value


def convert_envelope(value: list) -> object:
    assert isinstance(value, list)
    assert len(value) == 2

    name = maybe_bytes(value[0])

    if name == "bytes":
        if not isinstance(value[1], bytes):
            raise ProtocolError(value)
        return value[1]
    elif name == "dict":
        return dict((convert(k), convert(v)) for (k, v) in value[1])
    elif name in SEQUENCE_TYPES:
        return SEQUENCE_TYPES[name](convert(x) for x in value[1])
    elif name == "raise":
        raise convert_envelope(value[1])
    elif name == "exception":
        return decode_exception(value)

    raise ProtocolError(value)


def decode_exception(value) -> Exception:
    if len(value[1]) != 2:
        raise ProtocolError(value)
    exc_type, message = value[1]
    exc_type = maybe_bytes(exc_type)
    message = maybe_bytes(message)
    Error = ERROR_TYPES.get(exc_type, Exception)
    return Error(message) if message else Error()


def maybe_bytes(value):
    if value is None:
        return value
    if isinstance(value, bytes):
        return value.decode("utf8")


class ProtocolError(Exception):
    def __init__(self, value):
        self.value = value

    def __str__(self):
        return "cannot decode: {}".format(self.value)


ERROR_TYPES = dict(
    (name, getattr(builtins, name))
    for name in dir(builtins)
    if "Warning" in name or "Exception" in name or "Error" in name
)

SEQUENCE_TYPES = {
    "list": list,
    "tuple": tuple,
    "set": set,
    "frozenset": frozenset,
}

SINGLE_TYPE_OR_INSTANCE = {
    "ellipsis": ...,
}
