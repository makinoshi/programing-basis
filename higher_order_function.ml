let compose f1 f2 =
  let f x = f1 (f2 x) in
  f

let twice f =
  let g x = f (f x) in
  g

let twice_twice = twice twice
