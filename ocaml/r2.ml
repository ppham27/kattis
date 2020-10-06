open Printf;;
open Scanf;;

let () =
  let r2 = scanf "%d %d\n" (fun r1 s -> 2 * s - r1) in
  printf "%d\n" (r2)
