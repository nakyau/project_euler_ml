(*
The prime factors of 13195 are 5, 7, 13 and 29.

What is the largest prime factor of the number 600851475143 ?
*)

let rec range = function 0 -> [] | n -> range(n-1) @ [n];;
 
let factors n =
  List.filter (fun v -> (n mod v) = 0) (range n);;

exception Empty_list;;
let rec last = function
  [] -> raise Empty_list
| [_] as xs -> xs
| x::xs -> last xs;;

let rec print_list = function 
[] -> ()
| e::l -> print_int e ; print_string " " ; print_list l;;

let f = factors 600851475143;;
print_list(last f);;
