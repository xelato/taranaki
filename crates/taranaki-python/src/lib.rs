use redis_module::redis_module;
use redis_module::{Context, RedisError, RedisResult, RedisString};
use redis_module::{NextArg, RedisValue};

/// PYTHON.EVAL EXPRESSION
/// Evaluate a Python expression.
pub fn python_eval(_ctx: &Context, args: Vec<RedisString>) -> RedisResult {
    if args.len() < 2 {
        return Err(RedisError::WrongArity);
    }

    let mut args = args.into_iter();
    // skip command
    let _command = args.next_str()?;

    let code: &str = args.next_str()?;

    // todo: evaluate expression

    let mut result = Vec::new();
    result.push(RedisValue::SimpleStringStatic(code));

    Ok(RedisValue::Array(result))
}

redis_module! {
    name: "taranaki-python",
    version: 1,
    allocator: (redis_module::alloc::RedisAlloc, redis_module::alloc::RedisAlloc),
    data_types: [],
    commands: [
        ["python.eval", python_eval, "", 0, 0, 0, ""],
    ],
}
