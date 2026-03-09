use std::str::FromStr;
use std::string::ToString;

pub enum Mode {
    // restricted execution, no commands access
    RX,
    // access to read-only commands
    RO,
    // access to all available commands (the default)
    RW,
}

impl FromStr for Mode {
    type Err = String;

    fn from_str(s: &str) -> Result<Self, Self::Err> {
        match s.to_uppercase().as_str() {
            "RX" => Ok(Mode::RX),
            "RO" => Ok(Mode::RO),
            "RW" => Ok(Mode::RW),
            _ => Err("Allowed modes: RX|RO|RW".to_string()),
        }
    }
}

impl ToString for Mode {
    fn to_string(&self) -> String {
        match self {
            Mode::RX => "RX".to_string(),
            Mode::RW => "RW".to_string(),
            Mode::RO => "RO".to_string(),
        }
    }
}
