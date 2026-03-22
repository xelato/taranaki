use std::cmp::min;

use monty::{DictPairs, ExcType, MontyException, MontyObject};
use redis_module::{RedisResult, RedisValue};

/*
Convert Monty interpreter objects to Redis objects suitable for external consumption.

Any generic binary serialization format could work, however it is preferable to
choose "transport" over Redis types.

 1. Unambiguous conversion in both directions for correct representation of Python objects as
 they cross the Redis instance or Monty interpreter boundary.
 2. Use RedisValue types where possible.
    Simple types map well (None, Int, Float),
 3. Use envelope format for objects that don't have a corresponding RedisValue or it would be ambiguous to use it
 without additional type information.
*/

fn singleton(name: String) -> RedisValue {
    RedisValue::Array(vec![name.into()])
}

fn envelope(name: String, value: RedisValue) -> RedisValue {
    RedisValue::Array(vec![name.into(), value])
}

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

fn raise(exception: MontyException) -> RedisValue {
    envelope(
        "raise".to_string(),
        exception_envelope(exception.exc_type(), exception.message().map(String::from)),
    )
}

fn exception_envelope(exc_type: ExcType, arg: Option<String>) -> RedisValue {
    envelope(
        "exception".to_string(),
        RedisValue::Array(vec![
            RedisValue::SimpleString(exc_type.to_string()),
            match arg {
                Some(x) => RedisValue::BulkString(x.to_string()),
                None => RedisValue::Null,
            },
        ]),
    )
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

        // ellipsis instance singleton
        MontyObject::Ellipsis => singleton("ellipsis".to_string()),

        // pack bytes inside envelope to distinguish from strings (that end as bytes on the client)
        MontyObject::Bytes(bytes) => envelope("bytes".to_string(), RedisValue::StringBuffer(bytes)),

        // string
        MontyObject::String(value) => RedisValue::BulkString(value),

        // list
        MontyObject::List(items) => envelope("list".to_string(), sequence(items)),

        // tuple
        MontyObject::Tuple(items) => envelope("tuple".to_string(), sequence(items)),

        // set
        MontyObject::Set(items) => envelope("set".to_string(), sequence(items)),

        // frozenset
        MontyObject::FrozenSet(items) => envelope("frozenset".to_string(), sequence(items)),

        // dict
        MontyObject::Dict(pairs) => envelope("dict".to_string(), dict_pairs(pairs)),

        // exception
        MontyObject::Exception { exc_type, arg } => exception_envelope(exc_type, arg),

        // namedtuple
        MontyObject::NamedTuple {
            type_name,
            field_names,
            values,
        } => {
            let size = min(field_names.len(), values.len());
            let mut items: Vec<RedisValue> = Vec::new();
            for i in 0..size {
                let entry: RedisValue = RedisValue::Array(vec![
                    RedisValue::SimpleString(field_names[i].clone()),
                    monty_to_redis(values[i].clone()),
                ]);
                items.push(entry);
            }
            let value = RedisValue::Array(vec![
                RedisValue::SimpleString(type_name),
                RedisValue::Array(items),
            ]);
            envelope("namedtuple".to_string(), value)
        }

        // unsupported
        _ => envelope(
            "unsupported".to_string(),
            RedisValue::BulkString(object.to_string()),
        ),
    }
}

pub fn serialize(result: Result<MontyObject, MontyException>) -> RedisResult {
    match result {
        Ok(value) => Ok(monty_to_redis(value)),
        Err(error) => {
            // that's correct
            Ok(raise(error))
        }
    }
}
