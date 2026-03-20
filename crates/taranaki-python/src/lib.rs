mod commander;
mod commands;
mod convert;
mod eval;
mod mode;
mod serialize;

use crate::mode::Mode;
use redis_module::redis_module;
use redis_module::{Context, NextArg, RedisError, RedisResult, RedisString};

/*
Modes:
    RW - access to all available server commands (read-only/write)
    RO - access to read-only commands
    RX - restricted execution, no commands access

PY.EVAL <code> [ARG [ARG [...]]]
PY.EVAL_RO <code> [ARG [ARG [...]]]
PY.EVAL_RX <code> [ARG [ARG [...]]]
Evaluate a Python code snippet.

PY.CALL <key> [ARG [ARG [...]]]
PY.CALL_RO <key> [ARG [ARG [...]]]
PY.CALL_RX <key> [ARG [ARG [...]]]
Evaluate a Python code snippet stored at `key`.

PY.HTTP <key> <method> <url> [HEADER <name>:<value> [HEADER <name>:<value> [...]]] [CONTENT <content>]

127.0.0.1:6379> SET /app/hello "r=http_request(); http_response(200, text='Hello, ' + r.args['name'])"
127.0.0.1:6379> PY.HTTP /app/hello GET /hello?name=Taranaki
*/

fn call_or_eval(ctx: &Context, args: Vec<RedisString>, mode: Mode, is_call: bool) -> RedisResult {
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
            // todo: include key in error message
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

    let commander = commander::Commander::get_instance(ctx, mode.clone(), argv)?;
    Ok(crate::eval::eval(&commander, code, mode.clone()))
}

fn http_call(ctx: &Context, args: Vec<RedisString>, mode: Mode) -> RedisResult {
    // todo: lossless/lossy serialization
    // todo: convert exceptions/errors and incorrect return types to 503
    // todo: namedtuple support
    // todo: implement http_request()
    // todo: implement http_response()
    call_or_eval(ctx, args, mode, true)
}

pub fn python_eval_rw(ctx: &Context, args: Vec<RedisString>) -> RedisResult {
    call_or_eval(ctx, args, Mode::RW, false)
}

pub fn python_eval_ro(ctx: &Context, args: Vec<RedisString>) -> RedisResult {
    call_or_eval(ctx, args, Mode::RO, false)
}

pub fn python_eval_rx(ctx: &Context, args: Vec<RedisString>) -> RedisResult {
    call_or_eval(ctx, args, Mode::RX, false)
}

pub fn python_call_rw(ctx: &Context, args: Vec<RedisString>) -> RedisResult {
    call_or_eval(ctx, args, Mode::RW, true)
}

pub fn python_call_ro(ctx: &Context, args: Vec<RedisString>) -> RedisResult {
    call_or_eval(ctx, args, Mode::RO, true)
}

pub fn python_call_rx(ctx: &Context, args: Vec<RedisString>) -> RedisResult {
    call_or_eval(ctx, args, Mode::RX, true)
}

pub fn python_http_ro(ctx: &Context, args: Vec<RedisString>) -> RedisResult {
    http_call(ctx, args, Mode::RO)
}

pub fn python_http_rw(ctx: &Context, args: Vec<RedisString>) -> RedisResult {
    http_call(ctx, args, Mode::RW)
}

redis_module! {
    name: "taranaki-python",
    version: 1,
    allocator: (redis_module::alloc::RedisAlloc, redis_module::alloc::RedisAlloc),
    data_types: [],
    commands: [
        ["py.eval", python_eval_rw, "", 0, 0, 0, ""],
        ["py.eval_ro", python_eval_ro, "", 0, 0, 0, ""],
        ["py.eval_rx", python_eval_rx, "", 0, 0, 0, ""],

        ["py.call", python_call_rw, "", 0, 0, 0, ""],
        ["py.call_ro", python_call_ro, "", 0, 0, 0, ""],
        ["py.call_rx", python_call_rx, "", 0, 0, 0, ""],

        ["py.http", python_http_rw, "", 0, 0, 0, ""],
        ["py.http_ro", python_http_ro, "", 0, 0, 0, ""],
    ],
}
