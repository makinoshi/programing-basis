type gakusei_t = {
  namae : string;
  tensuu : int;
  seiseki : string;
}

type book_t = {
  title : string;
  author : string;
  publisher : string;
  price : int;
  isbn : string;
}

let book1 = {title = "foo"; author = "bar"; publisher = "baz"; price = 500; isbn = "50000"}
