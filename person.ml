(* 人に関する情報を格納するレコード *)
type person_t = {
  name : string;	(* 名前 *)
  shincho : float;	(* 身長 *)
  taiju : float;	(* 体重 *)
  tsuki : int;		(* 誕生月 *)
  hi : int;		(* 誕生日 *)
  ketsueki : string;	(* 血液型 *)
}

let person1 = {name = "浅井"; shincho = 1.72; taiju = 58.5; tsuki = 9; hi = 17; ketsueki = "A"}
let person2 = {name = "宮原"; shincho = 1.63; taiju = 55.0; tsuki = 6; hi = 30; ketsueki = "B"}
let person3 = {name = "中村"; shincho = 1.68; taiju = 63.0; tsuki = 6; hi = 6; ketsueki = "O"}

(* let rec count_ketsueki_A lst = match lst with
 *     [] -> 0
 *   | {ketsueki = b} :: rest
 *     -> if b = "A"
 *     then 1 + count_ketsueki_A rest
 *     else count_ketsueki_A rest *)

let is_ketsueki_A p = p.ketsueki = "A"

let count_ketsueki_A lst =
  List.filter is_ketsueki_A lst
  |> List.length

let count_ketsueki_A_test = count_ketsueki_A [] = 0
let count_ketsueki_A_test = count_ketsueki_A [person1; person2; person3] = 1

(* person_t 型のリストの例 *)
let lst1 = []
let lst2 = [person1]
let lst3 = [person1; person2]
let lst4 = [person2; person1]
let lst5 = [person3; person1; person2]

let rec person_insert person lst = match lst with
    [] -> [person]
  | first :: rest -> if person.name > first.name
    then person :: first :: rest
    else first :: (person_insert person rest)

(* テスト *)
let person_insert_test1 = person_insert person1 [] = [person1]
let person_insert_test2 = person_insert person1 [person2] = [person1; person2]
let person_insert_test3 = person_insert person2 [person1] = [person1; person2]
let person_insert_test4 = person_insert person3 [person1; person2] = [person1; person2; person3]

let rec person_ins_sort lst = match lst with
    [] -> []
  | first :: rest -> person_insert first (person_ins_sort rest)

(* テスト *)
let person_ins_sort_test1 = person_ins_sort lst1 = []
let person_ins_sort_test2 = person_ins_sort lst2 = [person1]
let person_ins_sort_test3 = person_ins_sort lst3 = [person1; person2]
let person_ins_sort_test4 = person_ins_sort lst4 = [person1; person2]
let person_ins_sort_test5 = person_ins_sort lst5 = [person1; person2; person3]
