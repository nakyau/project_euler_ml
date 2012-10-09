(*
2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

What is the smallest positive number that is evenly divisible by all
  of the numbers from 1 to 20?
*)
let rec is_multiples = fun x y ->
  if y = 0 then true
  else
    if x mod y = 0
    then is_multiples x (y - 1)
    else false;;

let resolver = fun x ->
  let multiples = ref 20 in
  while false = is_multiples !multiples x do
    multiples := !multiples + 20;
  done;
  Printf.printf "%d \n" !multiples;;

resolver 10;;
