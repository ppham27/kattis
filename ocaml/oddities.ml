open Printf;;
open Scanf;;

let rec read_ints n xs = match n with
  | 0 -> xs
  | _ -> scanf "%d\n" (fun x -> read_ints (n - 1) (x :: xs))
let xs = scanf "%d\n" (fun n -> read_ints n [])

let parity x = match (x mod 2) with
  | 0 -> "even"
  | _ -> "odd"
let solve x = sprintf "%d is %s"  x (parity x)
let ys = List.rev_map solve xs
let () = printf "%s\n" (String.concat "\n" ys)