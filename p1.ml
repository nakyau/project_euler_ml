(* project euler probrem 1.
http://projecteuler.net/problem=1

If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

Find the sum of all the multiples of 3 or 5 below 1000.
*)

(*
* return the number if get a number that is multiples of 3 or 5,if not return 0.
*)
let x3x5 = fun x ->
if 0 = x mod 3 || 0 = x mod 5
then x 
else 0;;

(*
* add all numbers bellow the first arg filtering with `x3x5` into second arg
*)
let rec sum_all_x3x5 = fun x y ->
if x <= 0 
then y 
else sum_all_x3x5 (x - 1) (y + x3x5 x);;

(*
* test sum_all_x3x5
*)
let test = fun x y ->
if (sum_all_x3x5 x 0 = y)
then true
else false;;

Printf.printf "TEST: %B \n" (test 9 23);;
Printf.printf "ANSWER: %d\n" (sum_all_x3x5 999 0);;
