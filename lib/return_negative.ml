(** 
In this simple assignment you are given a number and have to make it
negative. But maybe the number is already negative?

Examples:
    Input:  1  =>  Output: -1
    Input: -5  =>  Output: -5
    Input:  0  =>  Output:  0

Notes:

- The number can be negative already, in which case no change is required.
- Zero (0) is not checked for any specific sign. Negative zeros make no
  mathematical sense.
**)

let make_negative (number : int) : int =
  if number > 0 then -number else number

let%test _ = make_negative 42 = -42
let%test _ = make_negative (-9) = -9
let%test _ = make_negative 0 = 0
