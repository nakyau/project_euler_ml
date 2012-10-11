(*
By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.

What is the 10 001st prime number?
--
def isPrime?(num)
  (2..num).each { |i|
      if num % i == 0 && i < num
        return false
     end
  }
  true
end
*)


let rec is_prime = fun x y ->
  if y == 2
  then true
  else begin
    if x mod (y - 1) = 0
    then false
    else is_prime x (y - 1)
  end;;

let solver = 
  let i = ref 2 in
  let num = ref 1 in
  while !num <= 10001 do
    if is_prime !i !i then begin
      Printf.printf "%d :  %d \n" !num !i;
      incr num;
    end;
    incr i;
  done;
;;

solver;;
