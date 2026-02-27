use monty::{MontyObject, MontyRun};
use redis_module::RedisValue;

pub fn eval(code: String) -> RedisValue {
    // evaluate expression
    let runner = match MontyRun::new(code.to_owned(), "expression.py", vec![], vec![]) {
        Ok(x) => x,
        Err(error) => {
            return crate::convert::raise(error);
        }
    };

    let monty_result = runner.run_no_limits(vec![]);

    let value: MontyObject = match monty_result {
        Ok(value) => value,
        Err(error) => {
            return crate::convert::raise(error);
        }
    };

    crate::convert::monty_to_redis(value)
}
