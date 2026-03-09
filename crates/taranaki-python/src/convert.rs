use monty::{ExcType, ExternalResult, MontyException, MontyObject};
use num_bigint::BigInt;
use redis_module::RedisError;
use redis_module::RedisValue;
use redis_module::redisvalue::RedisValueKey;
use std::str::FromStr;

/*
For converting RedisValue objects which are the result of command invocations back for processing inside the interpreter.
*/
pub fn to_external_result(result: Result<RedisValue, RedisError>) -> ExternalResult {
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
