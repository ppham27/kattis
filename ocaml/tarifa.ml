open Printf;;
open Scanf;;

let () =
  let (x, n) = scanf "%d\n%d\n" (fun x n -> (x, n)) in
  let y = ref 0 in
  for _ = 1 to n do
    scanf "%d\n" (fun p -> y := max ((x + !y) - p) 0)
  done;
  printf "%d\n" (!y + x)
      
