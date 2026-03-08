use crate::commands::Callable;
use monty::ExcType;
use monty::ExternalResult;
use monty::MontyException;
use monty::MontyObject;

pub struct CommandNotImplemented {
    pub name: String,
}
impl Callable for CommandNotImplemented {
    fn call(
        &self,
        _args: Vec<MontyObject>,
        _kwargs: Vec<(MontyObject, MontyObject)>,
    ) -> ExternalResult {
        let command_name = self.name.to_owned();
        MontyException::new(
            ExcType::NotImplementedError,
            Some(String::from(format!(
                "command {command_name} not implemented"
            ))),
        )
        .into()
    }
}
