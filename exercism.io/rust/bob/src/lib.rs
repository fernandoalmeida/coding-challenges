pub fn reply(message: &str) -> &str {
    let empty:bool = message.trim() == "";
    let has_word:bool = message.chars().any(|c| c.is_alphabetic());
    let yell:bool = message.to_uppercase() == message;
    let question:bool = message.trim().ends_with("?");

    match true {
        _ if empty => "Fine. Be that way!",
        _ if has_word && yell && question => "Calm down, I know what I'm doing!",
        _ if has_word && yell => "Whoa, chill out!",
        _ if question => "Sure.",
        _ => "Whatever."
    }
}
