let rec append lst1 lst2 = match lst1 with
    [] -> lst2
  | first :: rest -> first :: append rest lst2

let append_test1 = append [] [] = []
let append_test2 = append [] [1; 2] = [1; 2]
let append_test3 = append [1; 2] [] = [1; 2]
let append_test4 = append [1; 2] [3;4] = [1; 2; 3; 4]
let append_test5 = append ["a"; "b"; "c"; "d"; "e"] ["f"; "g"] = ["a"; "b"; "c"; "d"; "e"; "f"; "g"]
