(*
A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 99.

Find the largest palindrome made from the product of two 3-digit numbers.

----
from forum:

The palindrome can be written as:

abccba

Which then simpifies to:

100000a + 10000b + 1000c + 100c + 10b + a

And then:

100001a + 10010b + 1100c

Factoring out 11:

11(9091a + 910b + 100c)

So the palindrome must be divisible by 11.  Seeing as 11 is prime, at least one of the numbers must be divisible by 11. 
*)

open Printf;;

let center_of_str = fun str ->
  (String.length str) / 2 + ((String.length str) mod 2);;

let inversion_of_str = fun str ->
  let inversion = String.create (String.length str) in
  for i = 0 to (String.length str) - 1 do
    inversion.[i] <- String.get str (((String.length str) - 1) - i);
  done;
  inversion;;

let is_palindromic = fun num ->
  let str = sprintf "%d" num in
  if String.sub str 0 (center_of_str str) = inversion_of_str (String.sub str (center_of_str str) 3)
  then true
  else false;;

let calc_palindromic =
  let x = ref 990 in (* biggest number of multiples of 11 in triple digits. *) 
  let y = ref 999 in
    while false = is_palindromic (!x * !y) do
      while !y >= !x do
        if is_palindromic (!x * !y)
        then printf "%d x %d = %d \n" !x !y (!x * !y);
        y := !y - 1;
      done;
      x := !x - 11
    done;
  ;;

calc_palindromic;;
