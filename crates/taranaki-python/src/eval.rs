use crate::commander::Commander;
use crate::mode::Mode;
use monty::{ExtFunctionResult, MontyException, PrintWriter};
use monty::{MontyObject, MontyRun, NoLimitTracker, RunProgress};

pub fn eval(
    commander: &Commander,
    code: String,
    mode: Mode,
) -> Result<MontyObject, MontyException> {
    match mode {
        Mode::RX => eval_restricted(code),
        Mode::RO | Mode::RW => eval_with_commands(commander, code),
    }
}

/// evaluate in RX mode
fn eval_restricted(code: String) -> Result<MontyObject, MontyException> {
    let runner = match MontyRun::new(code.to_owned(), "main.py", vec![]) {
        Ok(x) => x,
        Err(error) => {
            return Err(error);
        }
    };

    runner.run_no_limits(vec![])
}

fn eval_with_commands(commander: &Commander, code: String) -> Result<MontyObject, MontyException> {
    let runner = match MontyRun::new(commander.get_code(code.to_owned()), "main.py", vec![]) {
        Ok(run) => run,
        Err(error) => {
            return Err(error);
        }
    };

    let mut progress_result = runner.start(vec![], NoLimitTracker, PrintWriter::Stdout);

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

            RunProgress::FunctionCall(fc) => {
                let result: ExtFunctionResult = commander.execute_command(
                    fc.function_name.clone().into(),
                    fc.args.clone(),
                    fc.kwargs.clone(),
                );
                fc.resume(result, PrintWriter::Stdout)
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
