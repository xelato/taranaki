mod execute;
mod exists;
mod not_implemented;

use std::str::FromStr;

use monty::ExcType;
use monty::ExternalResult;
use monty::MontyException;
use monty::MontyObject;
use num_bigint::BigInt;
use redis_module::Context;
use redis_module::RedisError;
use redis_module::RedisValue;
use redis_module::redisvalue::RedisValueKey;

// commands that modify state
static RESTRICTED: &[&str] = &[
    "APPEND",
    "COPY",
    "DECR",
    "DECRBY",
    "DEL",
    "DELEX",
    "EXPIRE",
    "GETDEL",
    "GETEX",
    "GETSET",
    "INCR",
    "INCRBY",
    "INCRBYFLOAT",
    "MSET",
    "MSETEX",
    "PERSIST",
    "RENAME",
    "SET",
    "SETRANGE",
    "UNLINK",
];
// commands without effects
static UNRESTRICTED: &[&str] = &[
    "DIGEST", "EXISTS", "GET", "GETRANGE", "MGET", "PTTL", "STRLEN", "TIME", "TTL",
];

pub fn get_ro() -> Vec<String> {
    let mut items: Vec<String> = Vec::new();
    for item in UNRESTRICTED {
        items.push(item.to_string());
    }
    items
}

pub fn get_rw() -> Vec<String> {
    let mut items: Vec<String> = Vec::new();
    for item in UNRESTRICTED {
        items.push(item.to_string());
    }
    for item in RESTRICTED {
        items.push(item.to_string());
    }
    // generic EXECUTE command, only available in RW
    items.push(String::from("EXECUTE"));
    items
}

pub fn call_server_command(
    ctx: &Context,
    name: String,
    args: Vec<MontyObject>,
    kwargs: Vec<(MontyObject, MontyObject)>,
) -> ExternalResult {
    match name.as_str() {
        "EXECUTE" => execute::Execute { ctx }.call(args, kwargs),
        "EXISTS" => exists::Exists { ctx }.call(args, kwargs),
        _ => not_implemented::CommandNotImplemented { name: name }.call(args, kwargs),
    }
}

pub trait Callable {
    fn call(
        &self,
        _args: Vec<MontyObject>,
        _kwargs: Vec<(MontyObject, MontyObject)>,
    ) -> ExternalResult {
        // default implementation
        // raise NotImplementedError("command not implemented")
        MontyException::new(
            ExcType::NotImplementedError,
            Some(String::from("command not implemented")),
        )
        .into()
    }
}

/*
For converting RedisValue objects which are the result of command invocations back for processing inside the interpreter.
*/
fn to_external_result(result: Result<RedisValue, RedisError>) -> ExternalResult {
    match result {
        Ok(redis_value) => rv_to_mo(redis_value).into(),

        Err(error) => {
            let exception = match error {
                RedisError::WrongArity => {
                    MontyException::new(ExcType::ValueError, Some(String::from("Wrong arity")))
                }
                RedisError::Str(value) => {
                    MontyException::new(ExcType::ValueError, Some(String::from(value)))
                }
                RedisError::String(value) => {
                    MontyException::new(ExcType::ValueError, Some(String::from(value)))
                }
                RedisError::WrongType => {
                    MontyException::new(ExcType::TypeError, Some(String::from("Wrong type")))
                }
            };
            exception.into()
        }
    }
}

/*
Convert RedisValue to MontyObject.
Returned Python objects are immutable where a suitable corresponding type exists (e.g. tuple instead of list for RedisArray)
 */
fn rv_to_mo(redis_value: RedisValue) -> MontyObject {
    match redis_value {
        RedisValue::NoReply => MontyObject::None,
        RedisValue::Null => MontyObject::None,
        RedisValue::Bool(value) => MontyObject::Bool(value),
        RedisValue::Integer(value) => MontyObject::Int(value),
        RedisValue::Float(value) => MontyObject::Float(value),

        // str
        RedisValue::BulkString(value) => MontyObject::String(value),
        RedisValue::SimpleString(value) => MontyObject::String(value),
        RedisValue::SimpleStringStatic(value) => MontyObject::String(String::from(value)),

        // bytes
        RedisValue::BulkRedisString(value) => MontyObject::Bytes(value.as_slice().into()),
        RedisValue::StringBuffer(value) => MontyObject::Bytes(value),
        // format ignored
        RedisValue::VerbatimString((_format, value)) => MontyObject::Bytes(value),

        // do not raise an exception, just return one
        RedisValue::StaticError(value) => MontyObject::Exception {
            exc_type: ExcType::Exception,
            arg: Some(String::from(value)),
        },
        RedisValue::Array(values) => {
            MontyObject::Tuple(values.iter().map(|x| rv_to_mo(x.to_owned())).collect())
        }
        RedisValue::Set(values) => {
            MontyObject::FrozenSet(values.iter().map(|x| rvk_to_mo(x.to_owned())).collect())
        }
        RedisValue::Map(items) => {
            let mut pairs: Vec<(MontyObject, MontyObject)> = Vec::new();
            for (key, value) in items {
                pairs.push((rvk_to_mo(key), rv_to_mo(value)));
            }
            MontyObject::Dict(pairs.into())
        }

        // `tuple` instead of `set` to preserve order
        RedisValue::OrderedSet(values) => {
            MontyObject::Tuple(values.iter().map(|x| rvk_to_mo(x.to_owned())).collect())
        }
        // `tuple` instead of `dict` to preserve order
        RedisValue::OrderedMap(items) => {
            let mut pairs: Vec<MontyObject> = Vec::new();
            for (key, value) in items {
                pairs.push(MontyObject::Tuple(vec![rvk_to_mo(key), rv_to_mo(value)]))
            }
            MontyObject::Tuple(pairs)
        }

        RedisValue::BigNumber(value) => {
            match BigInt::from_str(&value) {
                Ok(bigint) => MontyObject::BigInt(bigint),
                // should not happen
                Err(_error) => MontyObject::BigInt(BigInt::ZERO),
            }
        }
    }
}

/*
Convert RedisValueKey to MontyObject
*/
fn rvk_to_mo(key: RedisValueKey) -> MontyObject {
    match key {
        RedisValueKey::Bool(value) => MontyObject::Bool(value),
        RedisValueKey::BulkRedisString(value) => MontyObject::Bytes(value.as_slice().into()),
        RedisValueKey::BulkString(value) => MontyObject::Bytes(value),
        RedisValueKey::Integer(value) => MontyObject::Int(value),
        RedisValueKey::String(value) => MontyObject::String(value),
    }
}
