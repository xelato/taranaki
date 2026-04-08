use std::collections::HashMap;

use crate::argv::Argv;
use crate::commands::callable::Callable;
use crate::commands::nt::nt;
use monty::ExcType;
use monty::ExternalResult;
use monty::MontyException;
use monty::MontyObject;
use url::Url;

static OPTIONS: [&str; 2] = ["HEADER", "CONTENT"];
static METHODS: [&str; 8] = [
    "GET", "POST", "PUT", "DELETE", "PATCH", "HEAD", "OPTIONS", "QUERY",
];

/*
request() -> HTTPRequest
Builds HTTP request from PY.HTTP command arguments.
*/
pub struct Request<'a> {
    pub argv: &'a Argv,
}
impl<'a> Callable for Request<'a> {
    fn call(
        &self,
        args: Vec<MontyObject>,
        kwargs: Vec<(MontyObject, MontyObject)>,
    ) -> ExternalResult {
        // validate args
        if args.len() > 0 {
            let num_args = args.len();
            return MontyException::new(
                ExcType::TypeError,
                Some(format!(
                    "request() takes 0 positional arguments but {num_args} was given"
                )),
            )
            .into();
        }

        // validate kwargs
        for (k, _v) in kwargs {
            let name = k.to_string();
            return MontyException::new(
                ExcType::TypeError,
                Some(format!(
                    "request() got an unexpected keyword argument '{name}'"
                )),
            )
            .into();
        }

        if self.argv.len() < 3 {
            return ExternalResult::Error(MontyException::new(
                ExcType::TypeError,
                Some(String::from(format!(
                    "Not enough arguments set for request()"
                ))),
            ));
        }

        // flag, option key and option value
        let mut flag: bool = true;
        let mut opt_key: String = String::new();
        let mut opt_value: String;

        // parsed data
        let mut arg_method: String = String::new();
        let mut arg_url: String = String::new();
        let mut headers: HashMap<String, String> = HashMap::new();
        let mut content: Option<Vec<u8>> = None;

        // loop over command arguments
        for (i, object) in self.argv.to_pyvalues().iter().enumerate() {
            if i == 0 {
                // app key
            } else if i == 1 {
                let MontyObject::String(arg) = object else {
                    return ExternalResult::Error(MontyException::new(
                        ExcType::ValueError,
                        Some(String::from(format!("HTTP method must be string"))),
                    ));
                };

                let value = arg.clone().to_uppercase();
                if !METHODS.contains(&value.as_str()) {
                    return ExternalResult::Error(MontyException::new(
                        ExcType::ValueError,
                        Some(String::from(format!("Unknown HTTP method {value}"))),
                    ));
                }
                arg_method = arg.clone();
            } else if i == 2 {
                let MontyObject::String(arg) = object else {
                    return ExternalResult::Error(MontyException::new(
                        ExcType::ValueError,
                        Some(String::from(format!("URL must be string"))),
                    ));
                };
                arg_url = arg.clone();
            } else {
                // read headers and content
                if flag {
                    // read option key
                    let MontyObject::String(arg) = object else {
                        return ExternalResult::Error(MontyException::new(
                            ExcType::ValueError,
                            Some(String::from(format!("option key must be string"))),
                        ));
                    };
                    opt_key = arg.to_uppercase();
                    if !OPTIONS.contains(&opt_key.as_str()) {
                        // unknown option
                        return ExternalResult::Error(MontyException::new(
                            ExcType::TypeError,
                            Some(String::from(format!("Unknown option {arg}"))),
                        ));
                    }
                } else {
                    // read option value
                    if opt_key == "HEADER" {
                        let MontyObject::String(arg) = object else {
                            return ExternalResult::Error(MontyException::new(
                                ExcType::ValueError,
                                Some(String::from(format!("header value must be string"))),
                            ));
                        };
                        opt_value = String::from(arg);
                        let k: &str;
                        let v: &str;
                        if opt_value.contains(":") {
                            (k, v) = opt_value.trim().split_once(":").unwrap_or(("", ""));
                        } else {
                            k = opt_value.trim();
                            v = "";
                        }
                        headers.insert(k.trim().to_lowercase().to_owned(), v.trim().to_owned());
                    } else if opt_key == "CONTENT" {
                        if let Some(_) = content {
                            return ExternalResult::Error(MontyException::new(
                                ExcType::TypeError,
                                Some(String::from(format!("CONTENT option already set"))),
                            ));
                        };
                        if let MontyObject::String(arg) = object {
                            // str
                            content = Some(arg.as_bytes().to_vec());
                        } else if let MontyObject::Bytes(bytes) = object {
                            // bytes
                            content = Some(bytes.to_owned());
                        } else {
                            return ExternalResult::Error(MontyException::new(
                                ExcType::ValueError,
                                Some(String::from(format!("content must be bytes or string"))),
                            ));
                        }
                    } else {
                        // unknown option
                        return ExternalResult::Error(MontyException::new(
                            ExcType::TypeError,
                            Some(String::from(format!("Unknown option {opt_key}"))),
                        ));
                    }
                }

                // toggle flag for next argument
                flag = !flag;
            }
        }
        if !flag {
            return ExternalResult::Error(MontyException::new(
                ExcType::TypeError,
                Some(String::from(format!("option {opt_key} without a value"))),
            ));
        }

        // parse url
        // if relative, prepend fake scheme, so it can be parsed by the library
        if arg_url.starts_with("/") {
            arg_url = format!("relative:{arg_url}")
        }
        let url = match Url::parse(&arg_url) {
            Ok(value) => value,
            Err(error) => {
                return ExternalResult::Error(MontyException::new(
                    ExcType::ValueError,
                    Some(error.to_string()),
                ));
            }
        };

        // complete call
        ExternalResult::Return(self.build_request(
            arg_method,
            url,
            headers,
            match content {
                None => vec![],
                Some(value) => value,
            },
        ))
    }
}

impl<'a> Request<'a> {
    fn build_request(
        &self,
        method: String,
        url: Url,
        headers: HashMap<String, String>,
        body: Vec<u8>,
    ) -> MontyObject {
        let mut values: Vec<(String, MontyObject)> = Vec::new();

        // method
        values.push((String::from("method"), MontyObject::String(method)));

        // url
        values.push((
            String::from("url"),
            MontyObject::String(String::from(url.as_str())),
        ));

        // headers
        let pairs = headers
            .iter()
            .map(|(k, v)| {
                (
                    MontyObject::String(k.to_owned()),
                    MontyObject::String(v.to_owned()),
                )
            })
            .collect();
        values.push((String::from("headers"), MontyObject::Dict(pairs)));

        // content
        values.push((String::from("content"), MontyObject::Bytes(body)));

        /* url derived fields */
        // just path
        values.push((
            String::from("path"),
            MontyObject::String(String::from(url.path())),
        ));
        // query string
        values.push((
            String::from("query"),
            match url.query() {
                None => MontyObject::None,
                Some(value) => MontyObject::String(String::from(value)),
            },
        ));
        values.push((
            String::from("scheme"),
            MontyObject::String(String::from(url.scheme())),
        ));
        values.push((
            String::from("fragment"),
            match url.fragment() {
                None => MontyObject::None,
                Some(value) => MontyObject::String(String::from(value)),
            },
        ));

        // query args as dict
        let mut args: Vec<(MontyObject, MontyObject)> = Vec::new();
        for (k, v) in url.query_pairs() {
            args.push((
                MontyObject::String(String::from(k)),
                MontyObject::String(String::from(v)),
            ));
        }
        values.push((String::from("args"), MontyObject::Dict(args.into())));

        // todo: content-derived fields: text/json
        // check content-type and set text/json fields

        // request
        nt(String::from("Request"), values)
    }
}
