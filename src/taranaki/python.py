"""
Run Python at a remote Taranaki-enabled instance.
"""

import builtins
from collections import namedtuple


def py_eval(
    redis_client, expression: str, args: tuple[str] = tuple(), readonly=False
) -> object:
    """Evaluate python expression at a remote Taranaki-enabled instance.

    Return the result as a python object.
    """
    command = "PY.LL_EVAL_RO" if readonly else "PY.LL_EVAL"
    argv = [expression, *args]
    return convert(redis_client.execute_command(command, *argv))


def py_call(
    redis_client, key: str, args: tuple[str] = tuple(), readonly=False
) -> object:
    """Call a python code snippet stored at `key`.

    Return the result as a python object.
    """
    command = "PY.LL_CALL_RO" if readonly else "PY.LL_CALL"
    argv = [key, *args]
    return convert(redis_client.execute_command(command, *argv))


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
        if isinstance(value[1], bytes):
            return value[1]
        raise ProtocolError(value)
    elif name == "dict":
        return dict((convert(k), convert(v)) for (k, v) in value[1])
    elif name in SEQUENCE_TYPES:
        return SEQUENCE_TYPES[name](convert(x) for x in value[1])
    elif name == "raise":
        raise convert_envelope(value[1])
    elif name == "exception":
        return decode_exception(value)
    elif name == "nt":
        return decode_namedtuple(value[1])

    raise ProtocolError(value)


def decode_exception(value) -> Exception:
    if len(value[1]) != 2:
        raise ProtocolError(value)
    exc_type, message = value[1]
    exc_type = maybe_bytes(exc_type)
    message = maybe_bytes(message)
    Error = ERROR_TYPES.get(exc_type, Exception)
    return Error(message) if message else Error()


def decode_namedtuple(value):
    type_name, items = value
    values, signature = {}, []
    signature.append(maybe_bytes(type_name))
    for item in items:
        k, v = item
        k = maybe_bytes(k)
        values[k] = convert(v)
        signature.append(k)
    return nt.get_type(tuple(signature))(**values)


class NTRegistry:
    """Namedtuple registry

    Keeps track of namedtuple types for reuse.
    Named tuple types are identified by their signature, comprised of type name and field names.
    Example: ('Point', 'x', 'y')
    Those are hashable and can serve as keys to a dict.
    Pre-existing, external types can be added to the registry with `add_type`.
    """

    def __init__(self):
        self.reset()

    def reset(self):
        self._ntmap = {}

    def add_type(self, nt_type: type):
        """Add pre-existing namedtuple type to the registry"""
        if not issubclass(nt_type, tuple):
            raise TypeError("not a named tuple definition")
        signature = tuple([nt_type.__name__, *nt_type._fields])
        self._ntmap[signature] = nt_type

    def get_type(self, signature: tuple):
        """Get namedtuple type by its signature."""
        nt_type = self._ntmap.get(signature)
        if nt_type is None:
            type_name, *field_names = signature
            nt_type = namedtuple(typename=type_name, field_names=field_names)
            self._ntmap[signature] = nt_type
        return nt_type


# global namedtuple type registry
nt = NTRegistry()


def maybe_bytes(value):
    if value is None:
        return value
    if isinstance(value, bytes):
        return value.decode("utf8")
    if isinstance(value, str):
        return value
    raise ProtocolError(value)


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
