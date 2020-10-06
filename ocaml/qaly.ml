open Printf;;
open Scanf;;

let () =
  let n = scanf "%d\n" (fun x -> x) in
  let total_qaly = ref 0. in
  for i = 1 to n do
    let qaly = scanf "%f %f\n" (fun x y -> x *. y) in
    total_qaly := !total_qaly +. qaly
  done;
  printf "%f\n" (!total_qaly)
