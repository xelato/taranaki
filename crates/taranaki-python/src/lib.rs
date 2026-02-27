mod convert;
mod eval;

use redis_module::NextArg;
use redis_module::redis_module;
use redis_module::{Context, RedisError, RedisResult, RedisString};

/// PY.EVAL <EXPRESSION>
/// Evaluate a Python expression.
pub fn python_eval(_ctx: &Context, args: Vec<RedisString>) -> RedisResult {
    if args.len() < 2 {
        return Err(RedisError::WrongArity);
    }

    let mut args = args.into_iter();
    // skip command
    let _command = args.next_str()?;

    // python expression
    let code: &str = args.next_str()?;

    Ok(eval::eval(code.to_owned()))
}

redis_module! {
    name: "taranaki-python",
    version: 1,
    allocator: (redis_module::alloc::RedisAlloc, redis_module::alloc::RedisAlloc),
    data_types: [],
    commands: [
        ["py.eval", python_eval, "", 0, 0, 0, ""],
    ],
}
