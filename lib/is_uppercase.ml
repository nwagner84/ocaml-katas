(**
Is the string uppercase?

Task

Create a method to see whether the string is ALL CAPS.
Examples (input -> output)

"c" -> False
"C" -> True
"hello I AM DONALD" -> False
"HELLO I AM DONALD" -> True
"ACSKLDFJSgSKLDFJSKLDFJ" -> False
"ACSKLDFJSGSKLDFJSKLDFJ" -> True

In this Kata, a string is said to be in ALL CAPS whenever it does not
contain any lowercase letter so any string containing no letters at all is
trivially considered to be in ALL CAPS.
**)

let is_uppercase (s : string) : bool = String.uppercase_ascii s = s

let%test _ = is_uppercase "c" = false
let%test _ = is_uppercase "C" = true
let%test _ = is_uppercase "hello I AM DONALD" = false
let%test _ = is_uppercase "HELLO I AM DONALD" = true
let%test _ = is_uppercase "ACSKLDFJSgSKLDFJSKLDFJ" = false
let%test _ = is_uppercase "ACSKLDFJSGSKLDFJSKLDFJ" = true
