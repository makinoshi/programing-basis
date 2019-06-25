let rec sum lst = match lst with
    [] -> 0
  | first :: rest -> first + sum rest

let test1 = sum [] = 0
let test2 = sum [2] = 2
let test3 = sum [1; 3] = 4
let test4 = sum [1; 2; 3; 4; 5; 6; 7; 8; 9; 10] = 55

let rec length lst = match lst with
    [] -> 0
  | first :: rest -> 1 + length rest

let test_length1 = length [] = 0
let test_length2 = length [2] = 1
let test_length3 = length [1; 3] = 2
let test_length4 = length [1; 2; 3; 4; 5; 6; 7; 8; 9; 10] = 10

let rec even lst = match lst with
    [] -> []
  | first :: rest -> if first mod 2 = 0
    then first :: even rest
    else even rest

let test_even1 = even [] = []
let test_even2 = even [2] = [2]
let test_even3 = even [1; 3] = []
let test_even4 = even [1; 2; 3; 4; 5; 6; 7; 8; 9; 10] = [2; 4; 6; 8; 10]

let rec concat lst = match lst with
    [] -> ""
  | first :: rest -> first ^ concat rest

let test_concat1 = concat [] = ""
let test_concat1 = concat ["春"; "夏"; "秋" ; "冬"] = "春夏秋冬"

type person_t = {
  height : int;
  weight : int;
  birthday : string;
  blood_type : string;
}

let person1 = {height = 160; weight = 55; birthday = "0601"; blood_type = "A"}
let person2 = {height = 170; weight = 60; birthday = "0701"; blood_type = "B"}
let person3 = {height = 180; weight = 70; birthday = "0801"; blood_type = "O"}

let rec count_ketsueki_A lst = match lst with
    [] -> 0
  | {blood_type = b} :: rest
    -> if b = "A"
    then 1 + count_ketsueki_A rest
    else count_ketsueki_A rest

let count_ketsueki_A_test = count_ketsueki_A [] = 0
let count_ketsueki_A_test = count_ketsueki_A [person1; person2; person3] = 1
