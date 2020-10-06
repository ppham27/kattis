open Printf;;
open Scanf;;

let () = scanf "%d\n" (fun n ->
    for i = 1 to n do
      printf "%d Abracadabra\n" (i)
    done)
