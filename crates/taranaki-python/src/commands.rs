// commands that modify state
static RESTRICTED: &[&str] = &["SET", "INCR", "DECR"];
// commands without effects
static UNRESTRICTED: &[&str] = &["EXISTS", "GET"];

pub fn get_ro() -> Vec<String> {
    let mut commands: Vec<String> = Vec::new();
    for command in UNRESTRICTED {
        commands.push(command.to_string());
    }
    commands
}

pub fn get_rw() -> Vec<String> {
    let mut commands: Vec<String> = Vec::new();
    for command in UNRESTRICTED {
        commands.push(command.to_string());
    }
    for command in RESTRICTED {
        commands.push(command.to_string());
    }
    commands
}
