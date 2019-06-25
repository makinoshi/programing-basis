let tsuru_no_ashi n = 2 * n

let tusu_test1 = tsuru_no_ashi 1 = 2
let tusu_test2 = tsuru_no_ashi 3 = 6

let kame_no_ashi n = 4 * n

let kame_test1 = kame_no_ashi 1 = 4
let kame_test2 = kame_no_ashi 3 = 12

let tsurukame_no_ashi t k = (tsuru_no_ashi t) + (kame_no_ashi k)

let tsurukame_test1 = tsurukame_no_ashi 1 2 = 10
let tsurukame_test2 = tsurukame_no_ashi 3 0 = 6
let tsurukame_test3 = tsurukame_no_ashi 1 1 = 6

let tsurukame ntusukame nfoot = (2 * ntusukame) - (nfoot / 2)

let tusukame_test1 = tsurukame 3 10 = 1
let tusukame_test2 = tsurukame 3 6 = 3
let tusukame_test3 = tsurukame 2 6 = 1
