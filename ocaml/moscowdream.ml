open Printf;;
open Scanf;;

let is_possible a b c n =
  not (n < 3 || a + b + c < n || a == 0 || b == 0 || c == 0)

let to_string x =
  match x with
  | true -> "YES"
  | false -> "NO"
  
let () = printf "%s\n" (
    to_string (scanf "%d %d %d %d\n" (is_possible)))