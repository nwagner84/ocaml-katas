(**

Write a function to convert a name into initials. This kata strictly takes
two words with one space in between them.

The output should be two capital letters with a dot separating them.

It should look like this:

    Sam Harris => S.H
    patrick feeney => P.F
**)

let abbrev_name (name : string) : string =
  String.split_on_char ' ' name
  |> List.map (fun x -> String.capitalize_ascii (String.sub x 0 1))
  |> String.concat "."

let%test _ = abbrev_name "Sam Harris" = "S.H"
let%test _ = abbrev_name "patrick feeney" = "P.F"
