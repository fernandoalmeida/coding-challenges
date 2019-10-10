pub fn raindrops(n: u32) -> String {
    match (n % 3, n % 5, n % 7) {
        (0, 0, 0) => Some("PlingPlangPlong"),
        (0, 0, _) => Some("PlingPlang"),
        (0, _, 0) => Some("PlingPlong"),
        (_, 0, 0) => Some("PlangPlong"),
        (0, _, _) => Some("Pling"),
        (_, 0, _) => Some("Plang"),
        (_, _, 0) => Some("Plong"),
        (_, _, _) => None
    }.unwrap_or(&n.to_string()).to_string()
}
