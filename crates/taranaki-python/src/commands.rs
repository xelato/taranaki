use monty::ExcType;
use monty::ExternalResult;
use monty::MontyException;
use monty::MontyObject;
use redis_module::Context;
use redis_module::RedisError;
use redis_module::RedisString;
use redis_module::RedisValue;

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
    "DEBUG", "DIGEST", "EXISTS", "GET", "GETRANGE", "MGET", "PTTL", "STRLEN", "TIME", "TTL",
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
    // generic CALL command, only available in RW
    items.push(String::from("CALL"));
    items
}

pub fn call_server_command(
    ctx: &Context,
    name: String,
    args: Vec<MontyObject>,
    kwargs: Vec<(MontyObject, MontyObject)>,
) -> ExternalResult {
    match name.as_str() {
        "DEBUG" => Debug {}.call(args, kwargs),
        "EXISTS" => Exists { ctx }.call(args, kwargs),
        _ => CommandNotImplemented { name: name }.call(args, kwargs),
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

struct CommandNotImplemented {
    name: String,
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

struct Exists<'a> {
    ctx: &'a Context,
}
impl<'a> Callable for Exists<'a> {
    fn call(
        &self,
        args: Vec<MontyObject>,
        kwargs: Vec<(MontyObject, MontyObject)>,
    ) -> ExternalResult {
        if args.len() == 0 {
            return MontyException::new(
                ExcType::TypeError,
                Some(format!("wrong number of arguments for 'exists' command")),
            )
            .into();
        }
        // no keyword arguments allowed, raise TypeError
        for (k, _v) in kwargs {
            let name = k.to_string();
            return MontyException::new(
                ExcType::TypeError,
                Some(format!(
                    "exists() got an unexpected keyword argument '{name}'"
                )),
            )
            .into();
        }

        // prepare args
        let mut keys: Vec<RedisString> = Vec::new();
        for arg in args {
            match arg {
                MontyObject::String(value) => {
                    keys.push(self.ctx.create_string(value));
                }
                MontyObject::Int(value) => {
                    keys.push(self.ctx.create_string(value.to_string()));
                }
                MontyObject::Float(value) => {
                    keys.push(self.ctx.create_string(value.to_string()));
                }
                MontyObject::Bytes(value) => {
                    keys.push(self.ctx.create_string(value));
                }
                _ => {
                    let type_name = arg.type_name();
                    return MontyException::new(
                        ExcType::TypeError,
                        Some(format!(
                            "Invalid input of type: '{type_name}'. Convert to a bytes, string, int or float first."
                        )),
                    )
                    .into();
                }
            }
        }

        // invoke command
        let items = keys.iter().map(|x| x).collect::<Vec<_>>();
        let result = self.ctx.call("EXISTS", items.as_slice());

        // complete call
        to_external_result(result)
    }
}

/*
For converting RedisValue objects which are the result of command invocations back for processing inside the interpreter.
*/
fn to_external_result(result: Result<RedisValue, RedisError>) -> ExternalResult {
    match result {
        Ok(redis_value) => {
            let object = match redis_value {
                RedisValue::Integer(value) => MontyObject::Int(value),
                // todo: handle all types
                _ => MontyObject::None,
            };
            object.into()
        }

        Err(error) => {
            let exception = match error {
                RedisError::WrongArity => {
                    MontyException::new(ExcType::ValueError, Some(String::from("Wrong arity")))
                }
                RedisError::Str(value) => {
                    MontyException::new(ExcType::ValueError, Some(String::from(value)))
                }
                RedisError::String(value) => {
                    MontyException::new(ExcType::ValueError, Some(String::from(value)))
                }
                RedisError::WrongType => {
                    MontyException::new(ExcType::TypeError, Some(String::from("Wrong type")))
                }
            };
            exception.into()
        }
    }
}
