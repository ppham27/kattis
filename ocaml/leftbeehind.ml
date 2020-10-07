open Printf;;
open Scanf;;

let rec read_cases cases = scanf "%d %d\n" (
    fun x y -> match (x, y) with
    | (0, 0) -> cases
    | _ -> read_cases ((x, y) :: cases))

let solve (x, y) =
  if x + y == 13 then "Never speak again."
  else if x > y then "To the convention."
  else if x < y then "Left beehind."
  else "Undecided.";;

let cases = read_cases []
let () = printf "%s\n" (String.concat "\n" (List.rev_map solve cases))