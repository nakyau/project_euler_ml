(*
By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.

What is the 10,001st prime number?
*)


let check_prime_over10 n =
  let f = ref 5 in
  while !f < n && !f > 0 do
    if (n mod !f) = 0 || n mod (!f + 2) = 0
      then f := 0
      else f := !f + 6;
  done;
  if !f = 0 
    then false
    else true;
;;

let rec is_prime n =
  match n with 
    1 -> false (* 1 is not prime number. *)
  | n when n < 4 -> true (* 2 and 3 are prime number *) 
  | n when (n mod 2 == 0 || n mod 3 == 0) -> false
  | n when n < 9 -> true (* 5,7 are prime number *)
  | n' -> check_prime_over10 n;;
  
let solver = 
  let i = ref 3 in (* start from 3. *)
  let num = ref 2 in (* we know 3 is second prime number. *)
  while !num <= 10001 do
    if is_prime !i then begin
      incr num;
      Printf.printf "%d :  %d \n" !num !i;
    end;
    i := !i + 2; (* all of the prime numbers are odd except for 2. *)
  done;
;;

solver;;
