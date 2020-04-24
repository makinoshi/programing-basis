let rec n_of_e n =
  if n = 0 then 1.0
  else n_of_e (n-1) /. float_of_int n

let rec e n =
  let d = n_of_e n in
  if d < 0.00001
  then d
  else d +. e (n + 1)

let e_1 = e 1
let e_10 = e 10
let e_100 = e 100
let e_1000 = e 1000
