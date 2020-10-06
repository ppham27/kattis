
open Printf;;
open Scanf;;

let status class_year class_month class_day
    birth_year birth_month birth_day
    num_courses =
  if class_year >= 2010 || birth_year >= 1991 then "eligible"
  else if num_courses > 40 then "ineligible"
  else "coach petitions"

let () = scanf "%d\n" (fun n ->
    for i = 1 to n do
      let () = printf "%s " (scanf "%s " (fun x -> x)) in
      printf "%s\n"
        (scanf "%d/%d/%d %d/%d/%d %d\n" (status))
    done)
