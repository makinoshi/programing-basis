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

let rec add_to_each n lst = match lst with
    [] -> []
  | first :: rest -> (n :: first) :: add_to_each n rest

let add_to_each_test1 = add_to_each 1 [] = []
let add_to_each_test2 = add_to_each 1 [[2]] = [[1; 2]]
let add_to_each_test3 = add_to_each 1 [[2]; [2; 3]] = [[1; 2]; [1; 2; 3]]

let rec prefix lst = match lst with
    [] -> []
  | first :: rest -> [first] :: add_to_each first (prefix rest)

let prefix_test1 = prefix [] = []
let prefix_test2 = prefix [1] = [[1]]
let prefix_test3 = prefix [1; 2] = [[1]; [1; 2]]
let prefix_test4 = prefix [1; 2; 3] = [[1]; [1; 2]; [1; 2; 3]]

let rec insert n lst = match lst with
    [] -> [n]
  | first :: rest -> if n < first
    then n :: first :: rest
    else first :: insert n rest

let insert_test1 = insert 1 [] = [1]
let insert_test2 = insert 5 [1; 3; 4; 7; 8] = [1; 3; 4; 5; 7; 8]
let insert_test2 = insert 0 [1; 3; 4; 7; 8] = [0; 1; 3; 4; 7; 8]

let rec ins_sort lst = match lst with
    [] -> []
  | first :: rest -> insert first (ins_sort rest)

let ins_sort_test1 = ins_sort [5; 3; 8; 1; 7; 4] = [1; 3; 4; 5; 7; 8]
