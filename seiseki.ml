let seiseki pair = match pair with
    (name, score) -> name ^ "さんの評価は" ^ score ^ "です"

let test1 = seiseki ("ほげ", "A") = "ほげさんの評価はAです"
