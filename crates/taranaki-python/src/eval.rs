use monty::{ExternalResult, MontyException, PrintWriter};
use monty::{MontyObject, MontyRun, NoLimitTracker, RunProgress};
use redis_module::Context;
use redis_module::RedisValue;
use std::str::FromStr;
use std::string::ToString;

#[derive(Debug)]
pub enum Mode {
    // restricted execution, no commands access
    RX,
    // access to read-only commands
    RO,
    // access to all available commands (the default)
    RW,
}

impl FromStr for Mode {
    type Err = String;

    fn from_str(s: &str) -> Result<Self, Self::Err> {
        match s.to_uppercase().as_str() {
            "RX" => Ok(Mode::RX),
            "RO" => Ok(Mode::RO),
            "RW" => Ok(Mode::RW),
            _ => Err("Allowed modes: RX|RO|RW".to_string()),
        }
    }
}

impl ToString for Mode {
    fn to_string(&self) -> String {
        match self {
            Mode::RX => "RX".to_string(),
            Mode::RW => "RW".to_string(),
            Mode::RO => "RO".to_string(),
        }
    }
}

pub fn eval(ctx: &Context, code: String, mode: Mode) -> RedisValue {
    match mode {
        Mode::RX => eval_rx(code),
        Mode::RO => eval_ro(ctx, code),
        Mode::RW => eval_rw(ctx, code),
    }
}

/// evaluate in RX mode
fn eval_rx(code: String) -> RedisValue {
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

/// Evaluate in RO mode
fn eval_ro(ctx: &Context, code: String) -> RedisValue {
    eval_with_commands(ctx, code, crate::commands::get_ro())
}

/// Evaluate in RW mode
fn eval_rw(ctx: &Context, code: String) -> RedisValue {
    eval_with_commands(ctx, code, crate::commands::get_rw())
}

fn eval_with_commands(ctx: &Context, code: String, allowed_commands: Vec<String>) -> RedisValue {
    let runner = match MontyRun::new(code.to_owned(), "expression.py", vec![], allowed_commands) {
        Ok(run) => run,
        Err(error) => {
            return crate::convert::raise(error);
        }
    };

    let mut progress_result = runner.start(vec![], NoLimitTracker, &mut PrintWriter::Stdout);

    loop {
        let progress: RunProgress<NoLimitTracker> = match progress_result {
            Ok(pr) => pr.into(),
            Err(error) => {
                return crate::convert::raise(error);
            }
        };

        progress_result = match progress {
            RunProgress::Complete(value) => {
                return crate::convert::monty_to_redis(value.clone());
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
                    execute_command(ctx, function_name.into(), args, kwargs);
                state.run(result, &mut PrintWriter::Stdout)
            }

            _ => {
                return crate::convert::raise(MontyException::new(
                    monty::ExcType::NotImplementedError,
                    Some(String::from("RunProgress not implemented")),
                ));
            }
        };
    }
}

fn execute_command(
    ctx: &Context,
    name: String,
    args: Vec<MontyObject>,
    kwargs: Vec<(MontyObject, MontyObject)>,
) -> ExternalResult {
    crate::commands::call_server_command(ctx, name, args, kwargs)
}
