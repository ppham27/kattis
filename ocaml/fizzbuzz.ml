open Printf;;
open Scanf;;

let test x y n = match (n mod x, n mod y) with
    | (0, 0) -> "FizzBuzz"
    | (0, _) -> "Fizz"
    | (_, 0) -> "Buzz"
    | _ -> (string_of_int n)    

let rec fizzbuzz x y n = match n with
  | 0 -> []
  | _ -> (test x y n) :: (fizzbuzz x y (n - 1))

let outputs = List.rev (scanf "%d %d %d\n" (fizzbuzz))

let () = printf "%s\n" (String.concat "\n" outputs)