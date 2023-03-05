(**
Write a function that checks if a given string (case insensitive) is a
palindrome.
**)

let rec is_palindrome (s : string) : bool =
  match String.length s with
  | 0 | 1 -> true
  | l ->
      let first = Char.lowercase_ascii s.[0] in
      let last = Char.lowercase_ascii s.[l - 1] in
      first = last && is_palindrome (String.sub s 1 (l - 2))

let%test _ = is_palindrome "a" = true
let%test _ = is_palindrome "aba" = true
let%test _ = is_palindrome "Abba" = true
let%test _ = is_palindrome "hello" = false
let%test _ = is_palindrome "bob" = true
let%test _ = is_palindrome "AbBa" = true
