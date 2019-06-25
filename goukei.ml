let goukei_to_heikin jp math eng sci soci =
  let sum = jp + math + eng + sci +soci in
  (sum , sum / 5)

let test1 = goukei_to_heikin 10 10 10 10 10 = (50, 10)
let test1 = goukei_to_heikin 10 20 30 40 50 = (150, 30)
