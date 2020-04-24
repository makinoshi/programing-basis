let rec sum lst = match lst with
    [] -> 0
  | first :: rest -> first + sum rest

let x = sum [1;2;3]
