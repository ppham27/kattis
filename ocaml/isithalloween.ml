open Printf;;
open Scanf;;

let () =
  printf "%s\n" (scanf "%[^\n]" (fun x ->
      match x with
      | "OCT 31" -> "yup"
      | "DEC 25" -> "yup"
      | x -> "nope"))

