use crate::commander::Commander;
use crate::mode::Mode;
use monty::{ExternalResult, MontyException, PrintWriter};
use monty::{MontyObject, MontyRun, NoLimitTracker, RunProgress};

pub fn eval(
    commander: &Commander,
    code: String,
    mode: Mode,
) -> Result<MontyObject, MontyException> {
    match mode {
        Mode::RX => eval_simple(code),
        Mode::RO | Mode::RW => eval_with_commands(commander, code),
    }
}

/// evaluate in RX mode
fn eval_simple(code: String) -> Result<MontyObject, MontyException> {
    let runner = match MontyRun::new(code.to_owned(), "main.py", vec![], vec![]) {
        Ok(x) => x,
        Err(error) => {
            return Err(error);
        }
    };

    runner.run_no_limits(vec![])
}

fn eval_with_commands(commander: &Commander, code: String) -> Result<MontyObject, MontyException> {
    let runner = match MontyRun::new(
        commander.get_code(code.to_owned()),
        "main.py",
        vec![],
        commander.commands.clone(),
    ) {
        Ok(run) => run,
        Err(error) => {
            return Err(error);
        }
    };

    let mut progress_result = runner.start(vec![], NoLimitTracker, &mut PrintWriter::Stdout);

    loop {
        let progress: RunProgress<NoLimitTracker> = match progress_result {
            Ok(pr) => pr.into(),
            Err(error) => {
                return Err(error);
            }
        };

        progress_result = match progress {
            RunProgress::Complete(value) => {
                return Ok(value);
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
                    commander.execute_command(function_name.into(), args, kwargs);
                state.run(result, &mut PrintWriter::Stdout)
            }

            _ => {
                return Err(MontyException::new(
                    monty::ExcType::NotImplementedError,
                    Some(String::from("RunProgress not implemented")),
                ));
            }
        };
    }
}
