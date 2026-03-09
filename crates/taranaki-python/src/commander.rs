use crate::commands;
use crate::commands::callable::Callable;
use crate::mode::Mode;
use monty::{ExternalResult, MontyObject};
use redis_module::Context;

/*
Thanks to the generic EXECUTE command,
all other commands can be implemented in Python, although it might be slower.
Monty does not yet support class definitions, but it does dataclass.
The following code is prepended to *each* eval request. Keep it short and simple.

*/
pub static PREFACE: &str = r#"

# return MontyObject::Dataclass{frozen = false} with fields generated
_ = EXECUTE
r = __generate_client()

# execute_command
r.execute_command = EXECUTE

# generic
r.copy = lambda *a: _('COPY', *a)
r.delete = lambda *a: _('DEL', *a)
r.dump = lambda *a: _('DUMP', *a)
r.exists = lambda *a: _('EXISTS', *a)
r.expire = lambda *a: _('EXPIRE', *a)
r.expireat = lambda *a: _('EXPIREAT', *a)
r.expiretime = lambda *a: _('EXPIRETIME', *a)
r.keys = lambda *a: _('KEYS', *a)

#
# overrides implemented in rust directly
r.exists = lambda *a, **kw: EXISTS(*a, **kw)

"#;

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

pub struct Commander {}

impl Commander {
    pub fn get_instance() -> Self {
        Commander::new()
    }
    fn new() -> Self {
        Commander {}
    }

    pub fn get_commands(&self, mode: Mode) -> Vec<String> {
        if let Mode::RX = mode {
            return vec![];
        }
        let mut items: Vec<String> = Vec::new();
        for item in UNRESTRICTED {
            items.push(item.to_string());
        }

        if let Mode::RW = mode {
            for item in RESTRICTED {
                items.push(item.to_string());
            }
            // generic EXECUTE command, only available in RW
            items.push(String::from("EXECUTE"));
        }
        // result
        items
    }

    pub fn get_code(&self, user_code: String) -> String {
        String::from(PREFACE) + user_code.as_str()
    }

    pub fn execute_command(
        &self,
        ctx: &Context,
        name: String,
        args: Vec<MontyObject>,
        kwargs: Vec<(MontyObject, MontyObject)>,
    ) -> ExternalResult {
        match name.as_str() {
            "EXECUTE" => commands::execute::Execute { ctx }.call(args, kwargs),
            "EXISTS" => commands::exists::Exists { ctx }.call(args, kwargs),
            _ => commands::not_implemented::CommandNotImplemented { name: name }.call(args, kwargs),
        }
    }
}
