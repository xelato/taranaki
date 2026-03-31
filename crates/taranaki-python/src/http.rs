/*
HTTP over RESP.
*/

use std::cmp::min;
use std::collections::HashMap;
use std::i64;

use monty::{DictPairs, MontyException, MontyObject};
use redis_module::RedisValue;

type StatusCode = i64;
type Headers = HashMap<String, String>;

pub struct RESPonse {
    code: StatusCode,
    headers: Headers,
    content: Vec<u8>,
}

impl Default for RESPonse {
    fn default() -> Self {
        Self::empty(200, HashMap::new())
    }
}

impl RESPonse {
    pub fn new(code: StatusCode, headers: Headers, body: Vec<u8>) -> Self {
        RESPonse {
            code: code,
            headers: headers,
            content: body,
        }
    }

    pub fn empty(code: StatusCode, headers: Headers) -> Self {
        RESPonse {
            code: code,
            headers: headers,
            content: Vec::new(),
        }
    }

    pub fn text(code: StatusCode, content: String) -> Self {
        let mut headers = Headers::default();
        headers.insert("content-type".into(), "text/plain; charset=utf-8".into());
        RESPonse {
            code: code,
            headers: headers,
            content: content.as_bytes().to_owned(),
        }
    }

    #[allow(unused)]
    pub fn html(code: StatusCode, content: String) -> Self {
        let mut headers = Headers::default();
        headers.insert("content-type".into(), "text/html; charset=utf-8".into());
        RESPonse {
            code: code,
            headers: headers,
            content: content.as_bytes().to_owned(),
        }
    }

    pub fn internal_server_error(message: String) -> Self {
        RESPonse::text(500, message)
    }
}

impl Into<RedisValue> for RESPonse {
    /*
    Serialize to standartized HTTP RESPonse.
     */
    fn into(self) -> RedisValue {
        let mut result: Vec<RedisValue> = Vec::new();

        // status code
        result.push(RedisValue::Integer(self.code));

        // headers
        for (name, value) in self.headers {
            let header = format!("{name}: {value}");
            result.push(RedisValue::SimpleString(header));
        }

        // content
        if self.content.len() > 0 {
            // note the extra array enclosure
            result.push(RedisValue::Array(vec![RedisValue::StringBuffer(
                self.content,
            )]));
        }

        RedisValue::Array(result)
    }
}

impl From<Result<MontyObject, MontyException>> for RESPonse {
    fn from(value: Result<MontyObject, MontyException>) -> Self {
        match value {
            Ok(object) => {
                let res = RESPonse::try_from(object);
                match res {
                    Ok(response) => response,
                    Err(msg) => RESPonse::internal_server_error(msg),
                }
            }
            Err(exception) => RESPonse::from(exception),
        }
    }
}

impl From<MontyException> for RESPonse {
    /*
    An exception occurred during processing.
    Return a 500 response with error message.
    */
    fn from(exception: MontyException) -> Self {
        // todo: include traceback in output
        RESPonse::internal_server_error(exception.summary())
    }
}

/*
Build a response from Python result.
The following patterns translate to a valid response:
1) Named tuple with the following fields and of certain type (as returned by http_response())
    - status_code: int
    - headers: dict([str, str])
    - body: bytes

2) A tuple with two elements:
    - int -> code
    - any -> json

// todo: research framework responses
*/
impl TryFrom<MontyObject> for RESPonse {
    type Error = String;

    fn try_from(object: MontyObject) -> Result<Self, Self::Error> {
        match object {
            MontyObject::NamedTuple {
                type_name,
                field_names,
                values,
            } => Self::from_namedtuple(type_name, field_names, values),

            MontyObject::Tuple(items) => Self::from_tuple(items),

            _ => Err(String::from("invalid response format")),
        }
    }
}

impl RESPonse {
    fn from_namedtuple(
        type_name: String,
        field_names: Vec<String>,
        values: Vec<MontyObject>,
    ) -> Result<Self, String> {
        let mut opt_code: Option<i64> = None;
        let mut opt_headers: Option<DictPairs> = None;
        let mut opt_body: Option<Vec<u8>> = None;

        let size = min(field_names.len(), values.len());

        for i in 0..size {
            let field_name = &field_names[i];
            let field_value = &values[i];

            if field_name == "status_code" {
                let MontyObject::Int(value) = field_value else {
                    return Err(String::from(format!(
                        "int required for {field_name} of {type_name}"
                    )));
                };
                opt_code = Some(value.clone());
            } else if field_name == "headers" {
                let MontyObject::Dict(pairs) = field_value else {
                    return Err(String::from(format!(
                        "dict required for {field_name} of {type_name}"
                    )));
                };
                opt_headers = Some(pairs.to_owned());
            } else if field_name == "body" {
                let MontyObject::Bytes(bytes) = field_value else {
                    return Err(String::from(format!(
                        "bytes required for {field_name} of {type_name}"
                    )));
                };
                opt_body = Some(bytes.to_owned());
            }
        }

        // code
        let Some(code) = opt_code else {
            return Err(String::from(format!(
                "{type_name} has no field status_code"
            )));
        };

        // headers
        let Some(pairs) = opt_headers else {
            return Err(String::from(format!("{type_name} has no field headers")));
        };

        // body
        let Some(body) = opt_body else {
            return Err(String::from(format!("{type_name} has no field body")));
        };

        let mut headers: HashMap<String, String> = HashMap::new();
        for (k, v) in pairs {
            let MontyObject::String(key) = k else {
                return Err(String::from("str required for header name"));
            };
            let MontyObject::String(value) = v else {
                return Err(String::from("str required for header value"));
            };

            headers.insert(key, value);
        }

        Ok(RESPonse::new(code, HashMap::default(), body))
    }

    fn from_tuple(_items: Vec<MontyObject>) -> Result<Self, String> {
        // todo:
        Ok(RESPonse::default())
    }
}
