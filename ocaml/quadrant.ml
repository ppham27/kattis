open Printf;;
open Scanf;;

type sign =
  | Positive
  | Negative

let sign x = if x < 0 then Negative else Positive

let quadrant = function
  | (Positive, Positive) -> 1
  | (Negative, Positive) -> 2
  | (Negative, Negative) -> 3
  | (Positive, Negative) -> 4

let () = printf "%d\n" (
    quadrant (scanf "%d\n%d\n" (fun x y -> ((sign x), (sign y)))))
