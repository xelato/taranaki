use crate::mode::Mode;
use monty::{ExternalResult, MontyException, PrintWriter};
use monty::{MontyObject, MontyRun, NoLimitTracker, RunProgress};
use redis_module::Context;
use redis_module::RedisValue;

pub fn eval(ctx: &Context, code: String, mode: Mode) -> RedisValue {
    match mode {
        Mode::RX => eval_simple(code),
        Mode::RO | Mode::RW => eval_with_commands(ctx, code, mode),
    }
}

/// evaluate in RX mode
fn eval_simple(code: String) -> RedisValue {
    let runner = match MontyRun::new(code.to_owned(), "main.py", vec![], vec![]) {
        Ok(x) => x,
        Err(error) => {
            return crate::serialize::raise(error);
        }
    };

    let monty_result = runner.run_no_limits(vec![]);

    let value: MontyObject = match monty_result {
        Ok(value) => value,
        Err(error) => {
            return crate::serialize::raise(error);
        }
    };

    crate::serialize::monty_to_redis(value)
}

fn eval_with_commands(ctx: &Context, code: String, mode: Mode) -> RedisValue {
    let commander = crate::commander::Commander::get_instance();
    let allowed_commands: Vec<String> = commander.get_commands(mode);
    let runner = match MontyRun::new(
        commander.get_code(code.to_owned()),
        "main.py",
        vec![],
        allowed_commands,
    ) {
        Ok(run) => run,
        Err(error) => {
            return crate::serialize::raise(error);
        }
    };

    let mut progress_result = runner.start(vec![], NoLimitTracker, &mut PrintWriter::Stdout);

    loop {
        let progress: RunProgress<NoLimitTracker> = match progress_result {
            Ok(pr) => pr.into(),
            Err(error) => {
                return crate::serialize::raise(error);
            }
        };

        progress_result = match progress {
            RunProgress::Complete(value) => {
                return crate::serialize::monty_to_redis(value.clone());
            }

            RunProgress::FunctionCall {
                function_name,
                args,
                kwargs,
                call_id: _,
                method_call: _,
                state,
            } => {
                let result: ExternalResult =
                    commander.execute_command(ctx, function_name.into(), args, kwargs);
                state.run(result, &mut PrintWriter::Stdout)
            }

            _ => {
                return crate::serialize::raise(MontyException::new(
                    monty::ExcType::NotImplementedError,
                    Some(String::from("RunProgress not implemented")),
                ));
            }
        };
    }
}
