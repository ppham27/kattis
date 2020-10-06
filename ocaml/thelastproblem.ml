open Printf;;
open Scanf;;

let () = scanf "%[^\n]" (
    fun s -> printf "Thank you, %s, and farewell!\n" (s))
