type ekimei_t = {
  kanji : string;
  kana : string;
  romaji : string;
  shozoku : string;
}

let hyoji ekimei = match ekimei with
    {kanji = k; kana = kana; shozoku = s}
    -> s ^ ", " ^ k ^ "(" ^ kana ^ ")"

let eki1 = {kanji = "茗荷谷"; kana = "ミョウガダニ"; romaji = "myougadani"; shozoku = "丸ノ内線"}

let test1 = hyoji eki1 = "丸ノ内線, 茗荷谷(ミョウガダニ)"

type ekikan_t = {
  kiten : string;
  shuten : string;
  keiyu : string;
  kyori : float;
  jikan : int;
}
