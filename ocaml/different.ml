open Printf;;
open Scanf;;

let () = try
    while true do
      scanf "%d %d\n" (fun x y -> printf "%d\n"  (abs (x - y)))
    done;
  with End_of_file -> ()
