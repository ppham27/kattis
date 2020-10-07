open Printf;;
open Scanf;;

let solve_problem problem = match problem with
    | "P=NP" -> "skipped"
    | _ -> sscanf problem "%d+%d" (fun x y -> string_of_int (x + y))

let rec read_problems n problems = match n with
    | 0 -> problems
    | _ -> scanf "%s\n" (
        fun problem -> read_problems (n - 1) (problem :: problems))

let problems = scanf "%d\n" (fun n -> read_problems n [])
let () = printf "%s\n" (String.concat "\n" (List.rev_map solve_problem problems))