let rec sum_of_square n =
  if n = 0 then 0
  else n * n + sum_of_square (n - 1)

let sum_of_square_test1 = sum_of_square 0 = 0
let sum_of_square_test2 = sum_of_square 1 = 1
let sum_of_square_test3 = sum_of_square 2 = 5
let sum_of_square_test4 = sum_of_square 3 = 14
let sum_of_square_test5 = sum_of_square 4 = 30

let rec a n =
  if n = 0 then 3
  else 2 * a (n - 1) - 1

let a_test1 = a 0 = 3
let a_test2 = a 1 = 5
let a_test3 = a 2 = 9
let a_test4 = a 3 = 17
let a_test5 = a 4 = 33
