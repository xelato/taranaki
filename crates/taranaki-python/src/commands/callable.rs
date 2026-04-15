use monty::{ExcType, ExtFunctionResult, MontyException, MontyObject};

pub trait Callable {
    fn call(
        &self,
        _args: &Vec<MontyObject>,
        _kwargs: &Vec<(MontyObject, MontyObject)>,
    ) -> ExtFunctionResult {
        // default implementation
        // raise NotImplementedError("command not implemented")
        MontyException::new(
            ExcType::NotImplementedError,
            Some(String::from("command not implemented")),
        )
        .into()
    }
}
