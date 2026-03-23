use monty::{DictPairs, ExcType, MontyException, MontyObject};
use redis_module::{RedisError, RedisResult, RedisValue};

fn sequence(items: Vec<MontyObject>) -> RedisValue {
    RedisValue::Array(items.iter().map(|x| monty_to_redis(x.clone())).collect())
}

fn dict_pairs(pairs: DictPairs) -> RedisValue {
    let mut items: Vec<RedisValue> = Vec::new();
    for (key, value) in pairs {
        items.push(RedisValue::Array(vec![
            monty_to_redis(key),
            monty_to_redis(value),
        ]));
    }
    RedisValue::Array(items)
}

fn exception_to_rv(exc_type: ExcType, arg: Option<String>) -> RedisValue {
    let mut value: String = exc_type.to_string();
    value.push_str(": ");
    if let Some(message) = arg {
        value.push_str(&message);
    }
    RedisValue::BulkString(value)
}

fn exception_to_re(exception: MontyException) -> RedisError {
    let exc_type: ExcType = exception.exc_type();
    let arg = exception.message();
    let mut value: String = exc_type.to_string();
    value.push_str(": ");
    if let Some(message) = arg {
        value.push_str(&message);
    }
    RedisError::String(value)
}

fn monty_to_redis(object: MontyObject) -> RedisValue {
    match object {
        // types that can be mapped to an existing RedisValue type unambiguously
        MontyObject::None => RedisValue::Null,
        MontyObject::Int(value) => RedisValue::Integer(value),
        MontyObject::Float(value) => RedisValue::Float(value),
        MontyObject::BigInt(value) => RedisValue::BigNumber(value.to_string()),
        // note: booleans end as ints on the client unless using protocol version 3, consider envelope?
        MontyObject::Bool(value) => RedisValue::Bool(value),

        // pack bytes inside envelope to distinguish from strings (that end as bytes on the client)
        MontyObject::Bytes(bytes) => RedisValue::StringBuffer(bytes),

        // string
        MontyObject::String(value) => RedisValue::BulkString(value),

        // list
        MontyObject::List(items) => sequence(items),

        // tuple
        MontyObject::Tuple(items) => sequence(items),

        // set
        MontyObject::Set(items) => sequence(items),

        // frozenset
        MontyObject::FrozenSet(items) => sequence(items),

        // dict
        MontyObject::Dict(pairs) => dict_pairs(pairs),

        // exception
        MontyObject::Exception { exc_type, arg } => exception_to_rv(exc_type, arg),

        // named tuples
        MontyObject::NamedTuple {
            type_name: _,
            field_names: _,
            values,
        } => sequence(values),

        // other
        _ => RedisValue::BulkString(object.to_string()),
    }
}

pub fn serialize(result: Result<MontyObject, MontyException>) -> RedisResult {
    match result {
        Ok(value) => Ok(monty_to_redis(value)),
        Err(error) => Err(exception_to_re(error)),
    }
}
