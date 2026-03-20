mod command_info;
mod commander;
mod commands;
mod convert;
mod eval;
mod lossless;
mod lossy;
mod mode;

use crate::mode::Mode;
use monty::{MontyException, MontyObject};
use redis_module::redis_module;
use redis_module::{Context, NextArg, RedisError, RedisResult, RedisString};

/*
> Evaluate Python `code` or call one stored at `key`.
PY.EVAL <code> [ARG [ARG [...]]]
PY.CALL <key> [ARG [ARG [...]]]

> Eval/Call in RO mode - readonly server commands allowed only
PY.EVAL_RO <code> [ARG [ARG [...]]]
PY.CALL_RO <key> [ARG [ARG [...]]]

> Restricted commands - no server command access, suitable for testing
PY.EVAL_RX <code> [ARG [ARG [...]]]
PY.CALL_RX <key> [ARG [ARG [...]]]

> HTTP request handling
PY.HTTP <key> <method> <url> [HEADER <name>:<value> [HEADER <name>:<value> [...]]] [CONTENT <content>]
PY.HTTP_RO <key> <method> <url> [HEADER <name>:<value> [HEADER <name>:<value> [...]]] [CONTENT <content>]
127.0.0.1:6379> SET /app/hello "r=http_request(); http_response(200, text='Hello, ' + r.args['name'])"
127.0.0.1:6379> PY.HTTP /app/hello GET /hello?name=Taranaki

> Modes:
    RW - access to all available server commands (read-only/write)
    RO - access to read-only commands
    RX - restricted execution, no commands access

> Server commands
Server commands are available for use inside the interpreter, depending on mode, named in lowercase.
Only a few are renamed to avoid conflicts with Python keywords, builtins or stdlib module names.
SET -> set_(); DEL -> delete(); COPY -> copy_()
Full command list can be fetched with: `PY.EVAL "sorted(commands())"`

> Lossy format
The above EVAL/CALL family of commands return results in lossy format.
It is optimized for readability in interactive sessions. However, there's no way to convey exact type information in all cases.
For example, there is no way to tell whether an array came from a python list, tuple, or set.

> Lossless format /prepend LL_
For cases, where correctness and exact type preservation is important, the lossless format must be used.
It preserves type information of returned Python objects, so that they can be correctly reconstructed on the other end.
Commands that return results in lossless format: PY.LL_EVAL, PY.LL_CALL, PY.LL_EVAL_RO, PY.LL_CALL_RO
The connection also needs to use protocol version 3, for it to work flawlessly.
In future, this return format may be reimplemented in a secure pickle-style format or another similarly rich binary format.
*/

pub type MontyResult = Result<MontyObject, MontyException>;

fn call_or_eval(
    ctx: &Context,
    args: Vec<RedisString>,
    mode: Mode,
    is_call: bool,
) -> Result<MontyResult, RedisError> {
    let num_args = args.len();
    if num_args < 2 {
        return Err(RedisError::WrongArity);
    }

    let mut args_iter = args.into_iter();

    // command
    let _command = args_iter.next_str()?;

    // python code
    let code: String = if is_call {
        // key
        let key: &str = args_iter.next_str()?;
        // fetch code from key
        let _code = ctx.call("GET", &[key])?;
        let Some(value) = convert::rv_try_string(_code) else {
            return Err(RedisError::String(String::from(format!(
                "code not set or wrong type at key: {key}"
            ))));
        };
        value
    } else {
        let _code = args_iter.next_str()?;
        String::from(_code)
    };

    // arguments
    let mut argv: Vec<String> = Vec::new();
    // first argument is script name, akin to cpython
    argv.push(String::from("main.py"));

    loop {
        let Some(value) = args_iter.next() else {
            break;
        };
        // arguments are expected to be encoded in utf-8
        argv.push(value.to_string_lossy());
    }

    let command_info = command_info::get(ctx)?;

    let commander = commander::Commander::get_instance(ctx, mode.clone(), argv, &command_info);
    Ok(crate::eval::eval(&commander, code, mode.clone()))
}

fn function_call(
    ctx: &Context,
    args: Vec<RedisString>,
    mode: Mode,
    is_call: bool,
    lossless: bool,
) -> RedisResult {
    let result = call_or_eval(ctx, args, mode, is_call)?;
    // result
    if lossless {
        lossless::serialize(result)
    } else {
        lossy::serialize(result)
    }
}

fn http_call(ctx: &Context, args: Vec<RedisString>, mode: Mode) -> RedisResult {
    // todo: namedtuple support
    // todo: implement http_request()
    // todo: implement http_response()
    let result = call_or_eval(ctx, args, mode, true)?;
    // todo: convert exceptions and incorrect return types to 500
    lossy::serialize(result)
}

// Eval calls
pub fn py_eval_rw(ctx: &Context, args: Vec<RedisString>) -> RedisResult {
    function_call(ctx, args, Mode::RW, false, false)
}

pub fn py_eval_ro(ctx: &Context, args: Vec<RedisString>) -> RedisResult {
    function_call(ctx, args, Mode::RO, false, false)
}

pub fn py_eval_rx(ctx: &Context, args: Vec<RedisString>) -> RedisResult {
    function_call(ctx, args, Mode::RX, false, false)
}

// Function calls
pub fn py_call_rw(ctx: &Context, args: Vec<RedisString>) -> RedisResult {
    function_call(ctx, args, Mode::RW, true, false)
}

pub fn py_call_ro(ctx: &Context, args: Vec<RedisString>) -> RedisResult {
    function_call(ctx, args, Mode::RO, true, false)
}

pub fn py_call_rx(ctx: &Context, args: Vec<RedisString>) -> RedisResult {
    function_call(ctx, args, Mode::RX, true, false)
}

// HTTP calls
pub fn py_http_rw(ctx: &Context, args: Vec<RedisString>) -> RedisResult {
    http_call(ctx, args, Mode::RW)
}

pub fn py_http_ro(ctx: &Context, args: Vec<RedisString>) -> RedisResult {
    http_call(ctx, args, Mode::RO)
}

// Lossless
pub fn py_ll_eval_rw(ctx: &Context, args: Vec<RedisString>) -> RedisResult {
    function_call(ctx, args, Mode::RW, false, true)
}

pub fn py_ll_eval_ro(ctx: &Context, args: Vec<RedisString>) -> RedisResult {
    function_call(ctx, args, Mode::RO, false, true)
}

pub fn py_ll_call_rw(ctx: &Context, args: Vec<RedisString>) -> RedisResult {
    function_call(ctx, args, Mode::RW, true, true)
}

pub fn py_ll_call_ro(ctx: &Context, args: Vec<RedisString>) -> RedisResult {
    function_call(ctx, args, Mode::RO, true, true)
}

redis_module! {
    name: "taranaki-python",
    version: 1,
    allocator: (redis_module::alloc::RedisAlloc, redis_module::alloc::RedisAlloc),
    data_types: [],
    commands: [
        // EVAL
        ["py.eval", py_eval_rw, "", 0, 0, 0, ""],
        ["py.eval_ro", py_eval_ro, "", 0, 0, 0, ""],
        ["py.eval_rx", py_eval_rx, "", 0, 0, 0, ""],

        // CALL
        ["py.call", py_call_rw, "", 0, 0, 0, ""],
        ["py.call_ro", py_call_ro, "", 0, 0, 0, ""],
        ["py.call_rx", py_call_rx, "", 0, 0, 0, ""],

        // HTTP
        ["py.http", py_http_rw, "", 0, 0, 0, ""],
        ["py.http_ro", py_http_ro, "", 0, 0, 0, ""],

        // results in lossless format
        ["py.ll_eval", py_ll_eval_rw, "", 0, 0, 0, ""],
        ["py.ll_eval_ro", py_ll_eval_ro, "", 0, 0, 0, ""],
        ["py.ll_call", py_ll_call_rw, "", 0, 0, 0, ""],
        ["py.ll_call_ro", py_ll_call_ro, "", 0, 0, 0, ""],

    ],
}
