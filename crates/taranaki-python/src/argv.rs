use monty::MontyObject;
use redis_module::RedisString;

pub struct Argv {
    name: String,
    args: Vec<RedisString>,
}

impl Argv {
    pub fn new(name: impl Into<String>, args: Vec<RedisString>) -> Self {
        Argv {
            name: name.into(),
            args: args,
        }
    }

    pub fn len(&self) -> usize {
        1 + self.args.len()
    }

    fn to_pyvalue(&self, value: RedisString) -> MontyObject {
        if let Ok(s) = value.try_as_str() {
            MontyObject::String(String::from(s))
        } else {
            MontyObject::Bytes(value.into())
        }
    }

    pub fn to_pyvalues(&self) -> Vec<MontyObject> {
        let mut res: Vec<MontyObject> = Vec::new();
        res.push(MontyObject::String(self.name.clone()));
        for x in &self.args {
            res.push(self.to_pyvalue(x.clone()));
        }
        res
    }

    pub fn to_strings(&self) -> Vec<String> {
        let mut res: Vec<String> = Vec::new();
        res.push(self.name.clone());
        for x in &self.args {
            res.push(x.to_string_lossy());
        }
        res
    }
}

impl Default for Argv {
    fn default() -> Self {
        Self::new("main.py", vec![])
    }
}
