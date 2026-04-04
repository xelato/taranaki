use crate::command_info::CommandInfo;
use crate::commands;
use crate::commands::callable::Callable;
use crate::mode::Mode;
use monty::{ExternalResult, MontyObject};
use redis_module::Context;

pub struct Commander<'a> {
    ctx: &'a Context,
    pub commands: Vec<String>,
    argv: Vec<String>,
}

impl<'a> Commander<'a> {
    pub fn get_instance(
        ctx: &'a Context,
        mode: Mode,
        argv: Vec<String>,
        command_info: &CommandInfo,
    ) -> Self {
        if let Mode::RX = mode {
            return Self {
                ctx: ctx,
                commands: vec![],
                argv: argv,
            };
        }

        let mut commands: Vec<String> = Vec::new();

        let mut rw = false;
        if let Mode::RW = mode {
            rw = true;
        }
        for (name, flags) in command_info {
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
                commands.push(cmd_to_method(name.to_string()));
            }
        }

        // additional custom
        commands.push(String::from("commands"));
        // todo: naming this "sys_argv" leads to problems...
        commands.push(String::from("sysargv"));
        // create named tuples
        commands.push(String::from("nt"));

        // http
        commands.push(String::from("request"));
        commands.push(String::from("response"));
        commands.push(String::from("redirect"));

        Self {
            ctx: ctx,
            commands: commands,
            argv: argv,
        }
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

            // sys.argv: list[str]
            "sysargv" => commands::sysargv::Sysargv { argv: &self.argv }.call(args, kwargs),

            // namedtuple creation
            "nt" => commands::nt::NT {}.call(args, kwargs),

            // custom impl
            "exists" => commands::exists::Exists { ctx: self.ctx }.call(args, kwargs),

            // http
            "request" => commands::request::Request { argv: &self.argv }.call(args, kwargs),

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
    cmd.replace("-", "_")
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
    method.replace("_", "-")
}
