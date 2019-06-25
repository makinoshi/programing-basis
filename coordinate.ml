let taisho_x pair = match pair with
    (x, y) -> (x, y * - 1)

let taisho_x_test1 = taisho_x (1, 2) = (1, -2)

let chuten (x1, y1) (x2, y2) =
  let x = (x1 + x2) / 2 in
  let y = (y1 + y2) / 2 in
  (x, y)

let chuten_test1 (10, 2) (2, 2) = (2, 2)
