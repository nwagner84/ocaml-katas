let powersOfTwo n =
  List.init (n + 1) (fun x -> Int64.shift_left 1L x |> Int64.to_int)

let%test _ = powersOfTwo 0 = [ 1 ]
let%test _ = powersOfTwo 1 = [ 1; 2 ]
let%test _ = powersOfTwo 2 = [ 1; 2; 4 ]
