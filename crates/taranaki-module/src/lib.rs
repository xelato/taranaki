
use base64::engine::general_purpose;
use base64::Engine;
use redis_module::redis_module;
use redis_module::{NextArg, RedisValue};
use redis_module::{Context, RedisError, RedisResult, RedisString};
use redis_module::key::RedisKey;
use wasmtime::{Instance, Store, ValType};


/// WASM.LOAD KEY WASM_BYTES_B64
/// Store a wasm function at specified KEY.
pub fn wasm_load(ctx: &Context, args: Vec<RedisString>) -> RedisResult {
    if args.len() < 3 {
        return Err(RedisError::WrongArity);
    }

    let mut args = args.into_iter();
    // skip command
    let _command = args.next_str()?;

    // key to save at
    let key: RedisString = args.next_arg()?;

    // Base64 encoded wasm-bytes
    let b64wasm: &str = args.next_str()?;

    let _content = match general_purpose::STANDARD.decode(b64wasm) {
        Ok(content) => content,
        Err(_error) => return Err(RedisError::String(String::from("Error decoding base64"))),
    };

    // SET key value
    let rk = ctx.open_key_writable(&key);
    match rk.write(b64wasm) {
        Ok(_) => {},
        Err(error) => return Err(error),
    };

    let mut result = Vec::new();
    result.push(RedisValue::BulkRedisString(key));
    result.push(RedisValue::SimpleStringStatic(b64wasm));

    Ok(RedisValue::Array(result))
}


/// WASM.INFO KEY
/// Get info about a wasm function stored at KEY.
pub fn wasm_info(_: &Context, args: Vec<RedisString>) -> RedisResult {
    Ok(RedisValue::Integer(args.len() as i64))
}


fn err_wasm2redis(_error: wasmtime::Error) -> RedisError {
    RedisError::String(_error.to_string())
}


/// WASM.CALL KEY [ARGS]
/// Call a wasm function stored at KEY.
pub fn wasm_call(ctx: &Context, args: Vec<RedisString>) -> RedisResult {
    if args.len() < 2 {
        return Err(RedisError::WrongArity);
    }

    // skip command
    let mut args = args.into_iter().skip(1);

    // KEY
    let key_name = args.next_arg()?;
    let key: RedisKey = ctx.open_key(&key_name);
    if key.is_null() {
        return Err(RedisError::String(String::from("key not found")))
    }

    // FUNC_NAME
    let func_name = args.next_str()?;

    // fetch wasm b64
    let value = key.read()?.unwrap();

    let wasm_bytes = match general_purpose::STANDARD.decode(value) {
        Ok(content) => content,
        Err(_error) => return Err(RedisError::String(String::from("Error decoding base64"))),
    };

    // invoke wasm function
    let engine = wasmtime::Engine::default();
    let module = wasmtime::Module::from_binary(&engine, &wasm_bytes).map_err(err_wasm2redis)?;
    let mut store = Store::new(&engine, ());
    let wasm_instance =  Instance::new(&mut store, &module, &[]).map_err(err_wasm2redis)?;

    // find func by its name
    let func  = wasm_instance.get_func(&mut store, func_name);
    let func = match func {
        None => return Err(RedisError::String(String::from(format!("Function {} not exported inside wasm module", func_name)))),
        Some(x) => x,
    };

    // construct input params based on the method signature
    let mut params  = vec![];
    for t in func.ty(&mut store).params() {
        match t {
            ValType::I32 => {
                let v = args.next_i64()? as i32;
                params.push(wasmtime::Val::I32(v));
            },

            ValType::I64 => {
                let v = args.next_i64()?;
                params.push(wasmtime::Val::I64(v));
            },

            ValType::F32 => {
                let v = args.next_f64()? as f32;
                params.push(wasmtime::Val::F32(v.to_bits()));
            },

            ValType::F64 => {
                let v = args.next_f64()?;
                params.push(wasmtime::Val::F64(v.to_bits()));
            },

            // The type  corresponds to a 128 bit vector of packed integer or floating-point data.
            // The packed data can be interpreted as signed or unsigned integers, single or double precision
            // floating-point values, or a single 128 bit type.
            // The interpretation is determined by individual operations.
            ValType::V128 => {
                // todo: vector type
            },

            ValType::Ref(_) => {
                // todo: reference type
            },
        }
    };

    // call
    // `func_results` must have the same length as the number of results for this function
    let mut func_results: Vec<wasmtime::Val> = vec![];
    for _ in func.ty(&mut store).results() {
        func_results.push(wasmtime::Val::I64(0));
    }
    match func.call(&mut store, params.as_ref(), &mut func_results) {
        Err(err) => return Err(RedisError::String(String::from(err.to_string()))),
        _ => (),
    }

    // return results
    let mut results: Vec<RedisValue> = vec![];
    for x in func_results {
        let rv: RedisValue = match x {
            wasmtime::Val::I32(v) => RedisValue::Integer(v as i64),
            wasmtime::Val::I64(v) => RedisValue::Integer(v),
            wasmtime::Val::F32(v) => RedisValue::Float(f32::from_bits(v) as f64),
            wasmtime::Val::F64(v) => RedisValue::Float(f64::from_bits(v)),
            // todo: other types?
            _ => continue,
        };
        results.push(rv);
    }

    // return
    Ok(RedisValue::Array(results))

}


redis_module! {
    name: "taranaki",
    version: 1,
    allocator: (redis_module::alloc::RedisAlloc, redis_module::alloc::RedisAlloc),
    data_types: [],
    commands: [
        ["wasm.info", wasm_info, "", 0, 0, 0, ""],
        ["wasm.load", wasm_load, "", 0, 0, 0, ""],
        ["wasm.call", wasm_call, "", 0, 0, 0, ""],
    ],
}
