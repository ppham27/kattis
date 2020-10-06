open Printf;;
open Scanf;;

let delta n m = m - n

let make_statement x =
  if x == 1 then "Dr. Chaz will have 1 piece of chicken left over!"
  else if x == -1 then "Dr. Chaz needs 1 more piece of chicken!"
  else if x > 1 then sprintf "Dr. Chaz will have %d pieces of chicken left over!" (x)
  else sprintf "Dr. Chaz needs %d more pieces of chicken!" (-x)

let () = printf "%s\n" (make_statement (scanf "%d %d\n" (delta)))
