let hanbetsushiki a b c = b ** 2. -. 4. *. a *. c

let hanbetsushiki_test1 = hanbetsushiki 1. 3. 2. = 1.

let kai_no_kosu a b c =
  if hanbetsushiki a b c  > 0. then "2つの実数解"
  else if hanbetsushiki a b c = 0. then "1つの実数解"
  else "2つの複素数解"

let kai_no_kosu_test1 = kai_no_kosu 1. 3. 2. = "2つの実数解"

let kyosu_kai a b c = hanbetsushiki a b c < 0.

let kyosu_kai_test1 = kyosu_kai 3. 4. 2. = true
