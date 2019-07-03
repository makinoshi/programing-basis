type gakusei_t = {
  namae : string;
  tensuu : int;
  seiseki : string;
}

type book_t = {
  title : string;
  author : string;
  publisher : string;
  price : int;
  isbn : string;
}

let book1 = {title = "foo"; author = "bar"; publisher = "baz"; price = 500; isbn = "50000"}

(* 学生のデータの例 *)
let gakusei1 = {namae="nakamura"; tensuu=90; seiseki="A"}
let gakusei2 = {namae="miyahara"; tensuu=80; seiseki="A"}
let gakusei3 = {namae="sato"; tensuu=75; seiseki="B"}
let gakusei4 = {namae="idehara"; tensuu=70; seiseki="B"}
let gakusei5 = {namae="tsubata"; tensuu=65; seiseki="C"}
let gakusei6 = {namae="asai"; tensuu=60; seiseki="C"}

(* 学生のリストの例 *)
let lst1 = []
let lst2 = [gakusei2]
let lst3 = [gakusei3; gakusei4]
let lst4 = [gakusei4; gakusei3]
let lst5 = [gakusei4; gakusei1; gakusei6; gakusei5; gakusei2; gakusei3]

let rec gakuse_insert gakusei lst = match lst with
    [] -> [gakusei]
  | first :: rest -> if gakusei.tensuu < first.tensuu
    then gakusei :: first :: rest
    else first :: (gakuse_insert gakusei rest)

let rec gakusei_sort lst = match lst with
    [] -> []
  | first :: rest -> gakuse_insert first (gakusei_sort rest)

let gakusei_sort_test1 = gakusei_sort lst1 = []
let gakusei_sort_test2 = gakusei_sort lst2 = [gakusei2]
let gakusei_sort_test3 = gakusei_sort lst3 = [gakusei4; gakusei3]
let gakusei_sort_test4 = gakusei_sort lst4 = [gakusei4; gakusei3]
let gakusei_sort_test5 = gakusei_sort lst5 = [gakusei6; gakusei5; gakusei4; gakusei3; gakusei2; gakusei1]

let rec gakusei_max lst = match lst with
    [] -> {namae = ""; tensuu= min_int; seiseki = ""}
  | first :: rest ->
    let rest_gakusei_max = gakusei_max rest in
    if first.tensuu > rest_gakusei_max.tensuu
    then first else rest_gakusei_max

let gakusei_max_test1 = gakusei_max lst1 = {namae = ""; tensuu= min_int; seiseki = ""}
let gakusei_max_test2 = gakusei_max lst2 = gakusei2
let gakusei_max_test3 = gakusei_max lst3 = gakusei3
let gakusei_max_test4 = gakusei_max lst4 = gakusei3
let gakusei_max_test5 = gakusei_max lst5 = gakusei1

(* 学生リストlstのうち各成績の人数を集計する *)
(* shukei: gakusei_t list -> int * int * int* int *)
let rec shukei lst = match lst with
    [] -> (0, 0, 0, 0)
  | first :: rest ->
    let (a, b, c, d) = shukei rest in
    if first.seiseki = "A" then (a + 1, b, c, d)
    else if first.seiseki = "B" then (a, b + 1, c, d)
    else if first.seiseki = "C" then (a, b, c + 1, d)
    else (a, b, c, d + 1)
