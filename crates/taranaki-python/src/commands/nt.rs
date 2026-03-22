use std::collections::HashMap;

use crate::commands::callable::Callable;
use monty::ExcType;
use monty::ExternalResult;
use monty::MontyException;
use monty::MontyObject;

/*
Named tuple creation.

def nt(type_name: str, *field_names, **values):
    """Reference Python implementation"""
    return namedtuple(type_name, field_names)(**values)

# usage in code
point = nt('Point', 'x', 'y', x=2, y=3)

# or
Point = lambda x, y: nt('Point', 'x', 'y', x=x, y=y)
point = Point(2, 3)

*/
pub struct NT {}
impl Callable for NT {
    fn call(
        &self,
        args: Vec<MontyObject>,
        kwargs: Vec<(MontyObject, MontyObject)>,
    ) -> ExternalResult {
        // validate args
        if args.len() < 1 {
            return MontyException::new(
                ExcType::TypeError,
                Some(format!(
                    "nt() requires at least one positional argument but none were given"
                )),
            )
            .into();
        }

        let mut type_name: Option<String> = None;
        let mut field_names: Vec<String> = Vec::new();
        for arg in args {
            let MontyObject::String(name) = arg else {
                return MontyException::new(
                    ExcType::ValueError,
                    Some(format!(
                        "nt() requires string for type name and field names"
                    )),
                )
                .into();
            };
            // first argument is type_name
            if type_name.is_none() {
                type_name = Some(name);
            } else {
                field_names.push(name);
            }
        }

        // kwargs
        let mut kmap: HashMap<String, MontyObject> = HashMap::new();
        for (k, v) in kwargs {
            kmap.insert(k.to_string(), v);
        }

        // values
        let mut values: Vec<MontyObject> = Vec::new();
        for field in &field_names {
            let Some((_k, v)) = kmap.remove_entry(field) else {
                return MontyException::new(
                    ExcType::TypeError,
                    Some(format!("nt(): missing required keyword argument '{field}'")),
                )
                .into();
            };
            values.push(v.clone());
        }
        if kmap.len() > 0 {
            return MontyException::new(
                ExcType::TypeError,
                Some(format!("Unexpected keyword argument(s) in call to nt()")),
            )
            .into();
        }

        // build result
        let object = MontyObject::NamedTuple {
            type_name: String::from(type_name.expect("roses are red, namedtuples are tuples")),
            field_names: field_names,
            values: values,
        };
        ExternalResult::Return(object)
    }
}
