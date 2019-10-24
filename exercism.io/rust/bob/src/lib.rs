pub fn reply(message: &str) -> &str {
    let empty:bool = message.trim() == "";
    let has_word:bool = message.chars().any(|c| c.is_alphabetic());
    let shout:bool = message.to_uppercase() == message;
    let question:bool = message.trim().ends_with("?");

    match (empty, has_word, shout, question) {
        (true, _, _, _) => "Fine. Be that way!",
        (_, true, true, true) => "Calm down, I know what I'm doing!",
        (_, true, true, false) => "Whoa, chill out!",
        (_, _, _, true) => "Sure.",
        (_, _, _, _) => "Whatever."
    }
}
