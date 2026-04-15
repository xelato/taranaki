use crate::commands::callable::Callable;
use crate::convert::to_external_result;
use monty::ExcType;
use monty::ExtFunctionResult;
use monty::MontyException;
use monty::MontyObject;
use redis_module::Context;
use redis_module::RedisString;
use std::collections::HashSet;
use std::sync::LazyLock;

/*
Generic EXECUTE command for invoking other commands.
> execute("COMMAND", *args, **kwargs)
> execute("SCAN", 0, count=100)
> execute("SET", "/key/1", 1)
> execute("GET", "/key/1")
*/

static KEYWORD_ARGUMENTS: LazyLock<HashSet<&'static str>> = LazyLock::new(|| {
    [
        "count", "match", "type", // SCAN
        "ex", "px", "exat", // SET
    ]
    .into()
});

pub struct Execute<'a> {
    pub ctx: &'a Context,
}

impl<'a> Execute<'a> {
    fn to_redis_string(&self, arg: &MontyObject) -> Option<RedisString> {
        match arg {
            MontyObject::String(value) => Some(self.ctx.create_string(String::from(value))),
            MontyObject::Int(value) => Some(self.ctx.create_string(value.to_string())),
            MontyObject::Float(value) => Some(self.ctx.create_string(value.to_string())),
            MontyObject::Bytes(value) => Some(self.ctx.create_string(value.to_owned())),
            _ => None,
        }
    }
}

impl<'a> Callable for Execute<'a> {
    fn call(
        &self,
        args: &Vec<MontyObject>,
        kwargs: &Vec<(MontyObject, MontyObject)>,
    ) -> ExtFunctionResult {
        if args.len() == 0 {
            return MontyException::new(ExcType::TypeError, Some(format!("no command specified")))
                .into();
        }
        // check against allowed keyword arguments, raise TypeError
        for (k, _v) in kwargs {
            let MontyObject::String(name) = k else {
                return MontyException::new(
                    ExcType::ValueError,
                    Some(format!("string argument required for key")),
                )
                .into();
            };
            if KEYWORD_ARGUMENTS.contains(name.to_lowercase().as_str()) {
                continue;
            }
            return MontyException::new(
                ExcType::TypeError,
                Some(format!(
                    "execute() got an unexpected keyword argument '{name}'"
                )),
            )
            .into();
        }

        // prepare args
        let mut first: bool = true;
        let mut command_name: String = String::new();
        let mut params: Vec<RedisString> = Vec::new();

        // arguments
        for arg in args {
            // command name
            if first {
                first = false;
                command_name = match arg {
                    MontyObject::String(value) => value.clone(),
                    _ => {
                        return MontyException::new(
                            ExcType::TypeError,
                            Some("Invalid command arg".to_string()),
                        )
                        .into();
                    }
                };
                continue;
            }

            // arg
            let Some(value) = self.to_redis_string(&arg) else {
                let type_name = arg.type_name();
                return MontyException::new(
                    ExcType::TypeError,
                    Some(format!("Invalid input of type: '{type_name}'")),
                )
                .into();
            };
            params.push(value);
        }

        //keyword arguments
        // command(key=value) -> COMMAND KEY value
        for (key, object) in kwargs {
            // key
            params.push(self.ctx.create_string(key.to_string().to_uppercase()));

            let Some(obj_redis_string) = self.to_redis_string(&object) else {
                let type_name = object.type_name();
                return MontyException::new(
                    ExcType::TypeError,
                    Some(format!("Invalid input of type: '{type_name}'")),
                )
                .into();
            };
            //value
            params.push(obj_redis_string);
        }

        // invoke command
        let items = params.iter().map(|x| x).collect::<Vec<_>>();
        let result = self
            .ctx
            .call(command_name.to_uppercase().as_str(), items.as_slice());

        // complete call
        to_external_result(result)
    }
}
