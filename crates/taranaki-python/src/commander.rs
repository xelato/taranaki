use std::collections::{HashMap, HashSet};

use crate::commands::callable::Callable;
use crate::mode::Mode;
use crate::{commands, convert};
use monty::{ExternalResult, MontyObject};
use redis_module::{Context, RedisError, RedisString, RedisValue};

pub struct Commander<'a> {
    ctx: &'a Context,
    pub commands: Vec<String>,
}

impl<'a> Commander<'a> {
    pub fn get_instance(ctx: &'a Context, mode: Mode) -> Result<Self, RedisError> {
        if let Mode::RX = mode {
            return Ok(Self {
                ctx: ctx,
                commands: vec![],
            });
        }

        let result = ctx.call("COMMAND", (vec![] as Vec<&RedisString>).as_slice())?;
        let info = parse_command_info(result)?;

        let mut commands: Vec<String> = Vec::new();

        let mut rw = false;
        if let Mode::RW = mode {
            rw = true;
        }
        for (name, flags) in info {
            let mut add = false;
            if flags.contains(&String::from("readonly")) {
                add = true;
            }
            if flags.contains(&String::from("write")) && rw {
                add = true;
            }
            if name == "time" {
                add = true;
            }
            if add {
                commands.push(cmd_to_method(name));
            }
        }

        // additional custom
        commands.push(String::from("commands"));

        Ok(Self {
            ctx: ctx,
            commands: commands,
        })
    }

    pub fn get_code(&self, user_code: String) -> String {
        user_code
    }

    pub fn execute_command(
        &self,
        method: String,
        args: Vec<MontyObject>,
        kwargs: Vec<(MontyObject, MontyObject)>,
    ) -> ExternalResult {
        let name = method_to_cmd(method);

        match name.as_str() {
            // custom command
            "commands" => MontyObject::Tuple(
                self.commands
                    .iter()
                    .map(|x| MontyObject::String(x.clone()))
                    .collect(),
            )
            .into(),

            // custom impl
            "exists" => commands::exists::Exists { ctx: self.ctx }.call(args, kwargs),

            // default impl
            _ => {
                let mut cmdargs: Vec<MontyObject> = Vec::new();
                cmdargs.push(MontyObject::String(name));
                for arg in args {
                    cmdargs.push(arg);
                }
                commands::execute::Execute { ctx: self.ctx }.call(cmdargs, kwargs)
            }
        }
    }
}

/*
Parse the output of the COMMAND command into a suitable form.
Return a mapping of <command name>:[<flags>]
*/
fn parse_command_info(value: RedisValue) -> Result<HashMap<String, HashSet<String>>, RedisError> {
    let RedisValue::Array(items) = value else {
        return Err(RedisError::String(String::from("not of type Array")));
    };

    // parse items
    let mut result: HashMap<String, HashSet<String>> = HashMap::new();
    for item in items {
        let RedisValue::Array(info) = item else {
            return Err(RedisError::String(String::from("not of type Array")));
        };
        if info.len() < 3 {
            return Err(RedisError::String(String::from(
                "unexpected command info size",
            )));
        }

        // name
        let Some(name) = convert::rv_try_string(info[0].clone()) else {
            return Err(RedisError::String(String::from(
                "command name is not string",
            )));
        };

        // flags
        let RedisValue::Array(flags_rv) = info[2].clone() else {
            return Err(RedisError::String(String::from(
                "command flags is not an array",
            )));
        };
        let mut flags: HashSet<String> = HashSet::new();
        for rv in flags_rv {
            let Some(flag) = convert::rv_try_string(rv) else {
                return Err(RedisError::String(String::from(
                    "command flag is not string",
                )));
            };
            flags.insert(flag);
        }

        result.insert(name, flags);
    }

    Ok(result)
}

/*
Avoid naming conflicts with Python keywords, builtin names or stdlib modules.
 */
fn cmd_to_method(cmd: String) -> String {
    if cmd == "set" {
        return String::from("set_");
    }
    if cmd == "del" {
        return String::from("delete");
    }
    if cmd == "type" {
        return String::from("type_");
    }
    if cmd == "eval" {
        return String::from("eval_");
    }
    if cmd == "copy" {
        return String::from("copy_");
    }
    cmd
}

fn method_to_cmd(method: String) -> String {
    if method == "set_" {
        return String::from("set");
    }
    if method == "delete" {
        return String::from("del");
    }
    if method == "type_" {
        return String::from("type");
    }
    if method == "eval_" {
        return String::from("eval");
    }
    if method == "copy_" {
        return String::from("copy");
    }
    method
}
