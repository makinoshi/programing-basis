type xx = {
  a : string;
  b : string;
}

type yy = {
  a : string;
  b : string;
}

let f (hoge : xx) = hoge.a ^ " bar"

let xxx : xx = {a = "foo"; b = "baz"}

let result = f xxx
