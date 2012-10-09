(*
The sum of the squares of the first ten natural numbers is,

1^2 + 2^2 + ... + 10^2 = 385
The square of the sum of the first ten natural numbers is,

(1 + 2 + ... + 10)^2 = 55^2 = 3025
Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 - 385 = 2640.

Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.
*)

(*
 * function that just return argument.
 *)
let is = fun x -> x;;

(*
 * calcurlate square of argument
 *)
let sqr = fun x -> x * x;;

let rec sum_all = fun f x y ->
  if y = 0
  then x
  else sum_all f (x + f y) (y - 1);;  


Printf.printf "sum of the sqr of 1-100: %d \n" (sum_all sqr 0 100);;
Printf.printf "sqr of the sum of 1-100: %d \n" (sqr (sum_all is 0 100));;
Printf.printf "difference: %d \n" (sqr (sum_all is 0 100) - sum_all sqr 0 100);;


