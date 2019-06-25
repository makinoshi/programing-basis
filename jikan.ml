let jikan h =
  if h < 0 || 24 < h then "Invalid hour"
  else if h < 13 then "AM"
  else "PM"

let test1 = jikan (-1) = "Invalid hour"
let test2 = jikan 12 = "AM"
let test3 = jikan 22 = "PM"
