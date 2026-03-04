use monty::ExcType;
use monty::ExternalResult;
use monty::MontyException;
use monty::MontyObject;

// commands that modify state
static RESTRICTED: &[&str] = &["SET", "INCR", "DECR"];
// commands without effects
static UNRESTRICTED: &[&str] = &["DEBUG", "EXISTS", "GET"];

pub fn get_ro() -> Vec<String> {
    let mut items: Vec<String> = Vec::new();
    for item in UNRESTRICTED {
        items.push(item.to_string());
    }
    items
}

pub fn get_rw() -> Vec<String> {
    let mut items: Vec<String> = Vec::new();
    for item in UNRESTRICTED {
        items.push(item.to_string());
    }
    for item in RESTRICTED {
        items.push(item.to_string());
    }
    items
}

pub fn call_server_command(
    name: String,
    args: Vec<MontyObject>,
    kwargs: Vec<(MontyObject, MontyObject)>,
) -> ExternalResult {
    match name.as_str() {
        "DEBUG" => Debug {}.call(args, kwargs),
        "EXISTS" => Exists {}.call(args, kwargs),
        "SET" => Set {}.call(args, kwargs),
        "GET" => Get {}.call(args, kwargs),
        _ => CommandNotImplemented {}.call(args, kwargs),
    }
}

pub trait Callable {
    fn call(
        &self,
        _args: Vec<MontyObject>,
        _kwargs: Vec<(MontyObject, MontyObject)>,
    ) -> ExternalResult {
        // default implementation
        // raise NotImplementedError("command not implemented")
        MontyException::new(
            ExcType::NotImplementedError,
            Some(String::from("command not implemented")),
        )
        .into()
    }
}

struct CommandNotImplemented {}
impl Callable for CommandNotImplemented {}

struct Debug {}
impl Callable for Debug {
    fn call(
        &self,
        args: Vec<MontyObject>,
        kwargs: Vec<(MontyObject, MontyObject)>,
    ) -> ExternalResult {
        let mut kwitems: Vec<MontyObject> = Vec::new();
        for (k, v) in kwargs {
            kwitems.push(MontyObject::Tuple(vec![k, v]));
        }
        MontyObject::Tuple(vec![MontyObject::Tuple(args), MontyObject::Tuple(kwitems)]).into()
    }
}

struct Exists {}
impl Callable for Exists {
    fn call(
        &self,
        _args: Vec<MontyObject>,
        _kwargs: Vec<(MontyObject, MontyObject)>,
    ) -> ExternalResult {
        // todo: implement
        MontyObject::Bool(false).into()
    }
}

struct Set {}
impl Callable for Set {}

struct Get {}
impl Callable for Get {}
