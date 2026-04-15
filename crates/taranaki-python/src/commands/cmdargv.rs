use crate::argv::Argv;
use crate::commands::callable::Callable;
use monty::ExcType;
use monty::ExtFunctionResult;
use monty::MontyException;
use monty::MontyObject;

/*
cmdargv() -> list[str]
First argument is the name of the script, matching cpython behaviour.
*/
pub struct Cmdargv<'a> {
    pub argv: &'a Argv,
}
impl<'a> Callable for Cmdargv<'a> {
    fn call(
        &self,
        args: Vec<MontyObject>,
        kwargs: Vec<(MontyObject, MontyObject)>,
    ) -> ExtFunctionResult {
        // validate args
        if args.len() > 0 {
            let num_args = args.len();
            return MontyException::new(
                ExcType::TypeError,
                Some(format!(
                    "cmdargv() takes 0 positional arguments but {num_args} was given"
                )),
            )
            .into();
        }

        // validate kwargs
        for (k, _v) in kwargs {
            let name = k.to_string();
            return MontyException::new(
                ExcType::TypeError,
                Some(format!(
                    "cmdargv() got an unexpected keyword argument '{name}'"
                )),
            )
            .into();
        }

        // complete call
        ExtFunctionResult::Return(MontyObject::List(
            self.argv
                .to_strings()
                .iter()
                .map(|x| MontyObject::String(x.clone()))
                .collect(),
        ))
    }
}
