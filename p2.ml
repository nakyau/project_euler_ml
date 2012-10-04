(*
 Each new term in the Fibonacci sequence is generated by adding the previous two terms. By starting with 1 and 2, the first 10 terms will be:

1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...

By considering the terms in the Fibonacci sequence whose values do not exceed four million, find the sum of the even-valued terms.
400万を超えない範囲のfibonacci数列のうち偶数の合計を求めなさい
 *)

(*
 * Fibonacci genarator
 *)
let rec fibonacci n =
  if n = 0 || n = 1 
  then 1
  else fibonacci (n - 1) + fibonacci (n - 2);;

(*
 * change odd number to zero.
 *)
let even_only x = 
  if 0 == x mod 2
  then x
  else 0;;

(*
* compose a function from two given functions
*)
let compose f g = fun x -> f(g(x));;
let even_only_fibonacci = compose even_only fibonacci;;

(*
* resolver 
*)
let sum_even_fibonacci goal = 
  let sum = ref 0 in
  let j = ref 1 in
  while fibonacci !j <= goal do
  j := !j + 1;
  sum := !sum + even_only_fibonacci !j;
  done;
  !sum;;

Printf.printf "ANSWER: %d \n" (sum_even_fibonacci 4000000);;


   