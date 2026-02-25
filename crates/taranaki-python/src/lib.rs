mod convert;

use monty::{MontyObject, MontyRun};
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

    // evaluate expression
    let runner = match MontyRun::new(code.to_owned(), "expression.py", vec![], vec![]) {
        Ok(x) => x,
        Err(error) => {
            return Err(RedisError::String(match error.message() {
                Some(x) => x.to_string(),
                None => error.to_string(),
            }));
        }
    };

    let monty_result = runner.run_no_limits(vec![]);

    let value: MontyObject = match monty_result {
        Ok(value) => value,
        Err(error) => {
            return Err(RedisError::String(match error.message() {
                Some(x) => x.to_string(),
                None => error.to_string(),
            }));
        }
    };

    Ok(convert::monty_to_redis(value))
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
