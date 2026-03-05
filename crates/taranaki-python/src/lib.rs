mod commands;
mod convert;
mod eval;

use std::str::FromStr;

use redis_module::NextArg;
use redis_module::redis_module;
use redis_module::{Context, RedisError, RedisResult, RedisString};

use crate::eval::Mode;

/// PY.EVAL <EXPRESSION> [RO|RX]
/// Evaluate a Python expression.
/// Optional flags:
///     RW - access to all available commands (default)
///     RO - access to read-only commands
///     RX - restricted execution, no commands access
pub fn python_eval(ctx: &Context, args: Vec<RedisString>) -> RedisResult {
    let num_args = args.len();
    if num_args < 2 || num_args > 3 {
        return Err(RedisError::WrongArity);
    }

    let mut args_iter = args.into_iter();

    // command
    let _command = args_iter.next_str()?;

    // python expression
    let code: &str = args_iter.next_str()?;

    // mode
    let mut mode: Mode = Mode::RW;
    if num_args == 3 {
        mode = match Mode::from_str(args_iter.next_str()?) {
            Ok(value) => value,
            Err(message) => return Err(RedisError::String(message)),
        }
    };

    Ok(eval::eval(ctx, code.to_owned(), mode))
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
