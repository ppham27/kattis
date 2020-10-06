open Printf;;
open Scanf;;

let solve x y =
  match y with
  | 1. -> (match x with
      | 0. -> "ALL GOOD"
      | x -> "IMPOSSIBLE")
  | y -> sprintf "%f" (x /. (1. -. y))

let () = printf "%s\n" (scanf "%f %f\n" (solve))
