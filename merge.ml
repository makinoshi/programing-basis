let rec merge lst1 lst2 = match (lst1, lst2) with
    ([], []) -> []
  | ([], first2 :: rest2) -> lst2
  | (first1 :: rest1, []) -> lst1
  | (first1 :: rest1, first2 :: rest2) ->
    if first1 < first2
    then first1 :: merge rest1 lst2
    else first2 :: merge lst1 rest2

let merge_test1 = merge [] [] = []
let merge_test2 = merge [] [1; 2] = [1; 2]
let merge_test3 = merge [1; 2] [] = [1; 2]
let merge_test4 = merge [1; 3] [2; 4] = [1; 2; 3; 4]
let merge_test5 = merge [2; 4] [1; 3] = [1; 2; 3; 4]
let merge_test6 = merge [1; 4] [1; 3] = [1; 1; 3; 4]

let rec equal_length lst1 lst2 = match (lst1, lst2) with
    ([], []) -> true
  | ([], first2 :: rest2) -> false
  | (first1 :: rest1, []) -> false
  | (first1 :: rest1, first2 :: rest2) -> equal_length rest1 rest2

let equal_length_test1 [] [] = true
let equal_length_test2 [1; 2] [] = false
let equal_length_test3 [] [1; 2] = false
let equal_length_test4 [1; 2] [1; 2] = true
