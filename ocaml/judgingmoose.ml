open Printf;;
open Scanf;;

let judge_moose l r =
  if l == 0 && r == 0 then "Not a moose"  
  else if l == r then sprintf "Even %d" (l + r)
  else sprintf "Odd %d" (2 * (max l r))

let () = printf "%s\n" (scanf "%d %d\n" (judge_moose))