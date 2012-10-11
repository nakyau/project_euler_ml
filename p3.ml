(*
The prime factors of 13195 are 5, 7, 13 and 29.

What is the largest prime factor of the number 600851475143 ?
*)

(*
 * get prime factors of number n
 *)
let prime_factors n =
  let rec iterate i n =
    if ( i * i > n )
      then [n]
      else
        if ( ( n mod i ) = 0 )
          then i :: ( iterate i ( n / i ) )
          else iterate ( i + 1 ) n
  in
  iterate 2 n
;;

(*
 * get a last value of list
 *)
exception Empty_list;;
let rec last = function
    [] -> raise Empty_list
  | [_] as xs -> xs
  | x::xs -> last xs;;

(*
 * for debug. 
 *)
let rec print_list = function 
[] -> ()
| e::l -> print_int e ; print_string " " ; print_list l;;

print_list(last (prime_factors 600851475143));;

