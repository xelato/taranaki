mod execute;
mod exists;
mod not_implemented;

use monty::{ExcType, ExternalResult, MontyException, MontyObject};
use redis_module::Context;

// commands that modify state
static RESTRICTED: &[&str] = &[
    "APPEND",
    "COPY",
    "DECR",
    "DECRBY",
    "DEL",
    "DELEX",
    "EXPIRE",
    "GETDEL",
    "GETEX",
    "GETSET",
    "INCR",
    "INCRBY",
    "INCRBYFLOAT",
    "MSET",
    "MSETEX",
    "PERSIST",
    "RENAME",
    "SET",
    "SETRANGE",
    "UNLINK",
];
// commands without effects
static UNRESTRICTED: &[&str] = &[
    "DIGEST", "EXISTS", "GET", "GETRANGE", "MGET", "PTTL", "STRLEN", "TIME", "TTL",
];

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
    // generic EXECUTE command, only available in RW
    items.push(String::from("EXECUTE"));
    items
}

pub fn call_server_command(
    ctx: &Context,
    name: String,
    args: Vec<MontyObject>,
    kwargs: Vec<(MontyObject, MontyObject)>,
) -> ExternalResult {
    match name.as_str() {
        "EXECUTE" => execute::Execute { ctx }.call(args, kwargs),
        "EXISTS" => exists::Exists { ctx }.call(args, kwargs),
        _ => not_implemented::CommandNotImplemented { name: name }.call(args, kwargs),
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
