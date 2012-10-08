(*
A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 99.

Find the largest palindrome made from the product of two 3-digit numbers.

----

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

let center_of_str = fun str ->
  (String.length str) / 2 + ((String.length str) mod 2);;

let inverse_of_str = fun str ->
  String.concat "" [(String.sub str 2 1);(String.sub str 1 1);(String.sub str 0 1)];;

let is_palindromic = fun str ->
  if String.sub str 0 (center_of_str str) = inverse_of_str (String.sub str (center_of_str str) 3)
  then true
  else false;;

let biggest_palindromic =
  let x = ref 999 in
  let y = ref 999 in
  for i=999 downto 850 do
    x := i;
    for j=999 downto 850 do
      y := j;
      if is_palindromic (Printf.sprintf "%d" (i * j))
      then Printf.printf "ANSWER: %d * %d = %d \n" i j (i * j);
    done;
  done;
  !x * !y;;

Printf.printf "ANSWER: %d \n" biggest_palindromic;;
