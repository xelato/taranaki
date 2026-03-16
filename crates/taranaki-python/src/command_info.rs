use crate::convert;
use redis_module::{Context, RedisError, RedisString, RedisValue};
use std::collections::{HashMap, HashSet};

pub type CommandFlags = HashSet<String>;
pub type CommandInfo = HashMap<String, CommandFlags>;

pub fn get(ctx: &Context) -> Result<CommandInfo, RedisError> {
    let result = ctx.call("COMMAND", (vec![] as Vec<&RedisString>).as_slice())?;
    // todo: cache info the first time it is used
    parse_command_info(result)
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
