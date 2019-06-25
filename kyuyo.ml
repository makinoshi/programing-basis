let jikyu = 950
let kihonkyu = 100
let yugu_jikyu = 980

(* let kyuyo x = if x < 30
 *   then kihonkyu + x * jikyu
 *   else kihonkyu + x * yugu_jikyu *)

let kyuyo x = kihonkyu + x * (if x < 30 then jikyu else yugu_jikyu)

let kyuyo_test1 = kyuyo 25 = 23850
let kyuyo_test2 = kyuyo 28 = 26700
let kyuyo_test3 = kyuyo 31 = 30480
