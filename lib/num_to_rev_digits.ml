(**
Convert number to reversed array of digits

Given a random non-negative number, you have to return the digits of this
number within an array in reverse order.

Example(Input => Output):
    35231 => [1,3,2,5,3]
    0 => [0]
**)

let rec digitize (n : int) : int list =
  match (n / 10, n mod 10) with
  | 0, 0 when n == 0 -> [ 0 ]
  | 0, r -> [ r ]
  | n', r -> r :: digitize n'

let%test _ = digitize 0 = [ 0 ]
let%test _ = digitize 35231 = [ 1; 3; 2; 5; 3 ]
