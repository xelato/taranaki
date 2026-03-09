use monty::ExcType;
use monty::ExternalResult;
use monty::MontyException;
use monty::MontyObject;
use redis_module::Context;
use redis_module::RedisString;

use crate::commands::Callable;
use crate::convert::to_external_result;

/*
EXISTS [key,...]
exists(key1, key2) -> int
*/
pub struct Exists<'a> {
    pub ctx: &'a Context,
}
impl<'a> Callable for Exists<'a> {
    fn call(
        &self,
        args: Vec<MontyObject>,
        kwargs: Vec<(MontyObject, MontyObject)>,
    ) -> ExternalResult {
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
        // validate
        if args.len() == 0 {
            return MontyException::new(
                ExcType::TypeError,
                Some(format!("wrong number of arguments for 'exists' command")),
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
