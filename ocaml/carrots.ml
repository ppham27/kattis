open Printf;;
open Scanf;;


let () =
  let (x, y) = scanf "%d %d\n" (fun x y -> (x,y)) in
  let arr = Array.make x "tmp" in
  for i = 0 to x - 1 do
    scanf "%[^\n]" (fun x -> arr.(i) <- x)
  done;
  printf "%d\n" (y);
