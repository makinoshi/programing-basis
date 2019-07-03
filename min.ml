let rec minimum lst = match lst with
    [] -> max_int
  | first :: rest ->
    let min_rest = minimum rest in
    if first < min_rest
    then first else min_rest

let minimum_test1 = minimum [3] = 3
let minimum_test2 = minimum [1; 2] = 1
let minimum_test3 = minimum [3; 2] = 2
let minimum_test4 = minimum [3; 2; 6; 4; 1; 8] = 1
