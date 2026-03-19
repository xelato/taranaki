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
PY.EVAL <EXPRESSION> [ARG [ARG [...]]]
PY.EVAL_RO <EXPRESSION> [ARG [ARG [...]]]
PY.EVAL_RX <EXPRESSION> [ARG [ARG [...]]]
Evaluate a Python expression in RW, RO or RX mode.
    RW - access to all available commands
    RO - access to read-only commands
    RX - restricted execution, no commands access
*/
fn python_eval(ctx: &Context, args: Vec<RedisString>, mode: Mode) -> RedisResult {
    let num_args = args.len();
    if num_args < 2 {
        return Err(RedisError::WrongArity);
    }

    let mut args_iter = args.into_iter();

    // command
    let _command = args_iter.next_str()?;

    // python expression
    let code: &str = args_iter.next_str()?;

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
    Ok(crate::eval::eval(&commander, code.to_owned(), mode.clone()))
}

pub fn python_eval_rw(ctx: &Context, args: Vec<RedisString>) -> RedisResult {
    python_eval(ctx, args, Mode::RW)
}

pub fn python_eval_ro(ctx: &Context, args: Vec<RedisString>) -> RedisResult {
    python_eval(ctx, args, Mode::RO)
}

pub fn python_eval_rx(ctx: &Context, args: Vec<RedisString>) -> RedisResult {
    python_eval(ctx, args, Mode::RX)
}

/*

PY.HTTP <key> <method> <url> [HEADER <name>:<value> [HEADER <name>:<value> [...]]] [CONTENT <content>]

127.0.0.1:6379> SET /app/hello "r=http_request(); http_response(200, text='Hello, ' + r.args['name'])"
127.0.0.1:6379> PY.HTTP /app/hello GET /hello?name=Taranaki
*/
fn python_http(ctx: &Context, args: Vec<RedisString>, mode: Mode) -> RedisResult {
    let num_args = args.len();
    if num_args < 4 {
        return Err(RedisError::WrongArity);
    }

    let mut args_iter = args.into_iter();

    // command
    let _command = args_iter.next_str()?;

    // key
    let key: &str = args_iter.next_str()?;

    // arguments
    let mut argv: Vec<String> = Vec::new();
    // first argument is script name, akin to cpython
    argv.push(String::from(key));

    // note: arguments are not interpreted (yet) as `HTTPRequest`.
    // This happens later during call to `http_request()`.
    // This allows to keep generality while not doing something twice on the ok path.
    loop {
        let Some(value) = args_iter.next() else {
            break;
        };
        // arguments are expected to be encoded in utf-8
        argv.push(value.to_string_lossy());
    }

    // fetch code from key
    let _code = ctx.call("GET", &[key])?;
    let Some(code) = convert::rv_try_string(_code) else {
        return Err(RedisError::String(String::from("code not set or wrong type")));
    };

    let commander = commander::Commander::get_instance(ctx, mode.clone(), argv)?;
    // todo: convert exceptions/errors and incorrect return types to 503
    // todo: namedtuple support
    Ok(crate::eval::eval(&commander, code.to_owned(), mode.clone()))

}

pub fn python_http_ro(ctx: &Context, args: Vec<RedisString>) -> RedisResult {
    python_http(ctx, args, Mode::RO)
}

pub fn python_http_rw(ctx: &Context, args: Vec<RedisString>) -> RedisResult {
    python_http(ctx, args, Mode::RW)
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
        ["py.http", python_http_rw, "", 0, 0, 0, ""],
        ["py.http_ro", python_http_ro, "", 0, 0, 0, ""],
    ],
}
