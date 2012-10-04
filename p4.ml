(*
A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 99.

Find the largest palindrome made from the product of two 3-digit numbers.
*)

let multiple = fun x y ->
  x * y;;


let is_palindromic = fun str ->
  if (String.sub str 0 3) = (String.sub str 3 3)
  then true
  else false;;

let biggest_palindromic =
  let x = ref 999 in
  let y = ref 999 in
  while false = is_palindromic (Printf.sprintf "%d" (!x * !y) ) do
    decr x;
    decr y;
  done;
  !x * !y;;

Printf.printf "ANSWER: %d \n" biggest_palindromic;;
