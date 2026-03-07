use monty::ExcType;
use monty::ExternalResult;
use monty::MontyException;
use monty::MontyObject;
use redis_module::Context;
use redis_module::RedisString;

use crate::commands::Callable;
use crate::commands::to_external_result;

/*
Generic EXECUTE command for invoking other commands.
> execute("COMMAND", *args, **kwargs)
> execute("SET", "key", "value")
> execute("GET", "key")
*/
pub struct Execute<'a> {
    pub ctx: &'a Context,
}
impl<'a> Callable for Execute<'a> {
    fn call(
        &self,
        args: Vec<MontyObject>,
        kwargs: Vec<(MontyObject, MontyObject)>,
    ) -> ExternalResult {
        if args.len() == 0 {
            return MontyException::new(ExcType::TypeError, Some(format!("no command specified")))
                .into();
        }
        // no keyword arguments allowed, raise TypeError
        for (k, _v) in kwargs {
            let name = k.to_string();
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
        let mut name: String = String::new();
        let mut params: Vec<RedisString> = Vec::new();
        for arg in args {
            if first {
                first = false;
                name = match arg {
                    MontyObject::String(value) => value,
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

            match arg {
                MontyObject::String(value) => {
                    params.push(self.ctx.create_string(value));
                }
                MontyObject::Int(value) => {
                    params.push(self.ctx.create_string(value.to_string()));
                }
                MontyObject::Float(value) => {
                    params.push(self.ctx.create_string(value.to_string()));
                }
                MontyObject::Bytes(value) => {
                    params.push(self.ctx.create_string(value));
                }
                _ => {
                    let type_name = arg.type_name();
                    return MontyException::new(
                        ExcType::TypeError,
                        Some(format!("Invalid input of type: '{type_name}'")),
                    )
                    .into();
                }
            }
        }

        // invoke command
        let items = params.iter().map(|x| x).collect::<Vec<_>>();
        let result = self.ctx.call(name.as_str(), items.as_slice());

        // complete call
        to_external_result(result)
    }
}
