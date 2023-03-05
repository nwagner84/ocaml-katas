(**
Reduce but Grow

Given a non-empty array of integers, return the result of multiplying the
values together in order. 

Example:

    [1, 2, 3, 4] => 1 * 2 * 3 * 4 = 24
**)

let grow (xs : int list) : int =
  List.fold_left (fun acc x -> acc * x) 1 xs

let%test _ = grow [ 1; 2; 3; 4 ] = 24
let%test _ = grow [ 4; 1; 1; 1; 4 ] = 16
let%test _ = grow [ 2; 2; 2; 2; 2; 2 ] = 64
