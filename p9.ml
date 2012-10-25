(*
A Pythagorean triplet is a set of three nuatural numbers a < b < c ,
for which 
a^2 + b^2 =c^2

For example, 3^2 + 4^2 = 9 + 16 = 25 = 5^2.

There exists exactly one Pythagorean triplet for which a + b + c =
  1000.
find the product abc. 

*)

let sqr x = x * x;;

let is_pythagoren_triplet a b c = 
  (sqr b) + (sqr c) = (sqr a) && a > 0 && b > 0 && c > 0;;


let resolver =
  let a = ref 998 in
  let b = ref 1 in
  let c = ref 1 in
  while (is_pythagoren_triplet !a !b !c) = false do
    if !b > 0
      then begin
        decr b;
        incr c;
        end
      else begin
        decr a;
        b := 1000 - !a;
        c := 0;
        end
  done;
  Printf.printf "%d + %d + %d = %d \n" !a !b !c (!a + !b + !c);
  Printf.printf "ANSWER: %d \n" (!a * !b * !c);
;;

resolver;;
