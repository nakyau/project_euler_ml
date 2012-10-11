(*
The sum of the squares of the first ten natural numbers is,

1^2 + 2^2 + ... + 10^2 = 385
The square of the sum of the first ten natural numbers is,

(1 + 2 + ... + 10)^2 = 55^2 = 3025
Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 - 385 = 2640.

Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.
--
from forum. in haskell
sum[1..100]^2 - (foldl (+) 1 (map (^2)[2,3..100]))
*)

let sqr = fun x -> x * x;;

let range = Array.to_list (Array.init 100 (fun i -> i + 1));;

let diff = ((sqr (List.fold_left (+) 0 range)) - List.fold_left (+) 0 (List.map sqr range));;

Printf.printf "difference: %d \n" diff;;
