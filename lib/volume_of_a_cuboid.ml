(**
Volume of a Cuboid

Bob needs a fast way to calculate the volume of a cuboid with three
values: the length, width and height of the cuboid. Write a function
to help Bob with this calculation.
**)

let get_volume_of_cuboid (l : int) (w : int) (h : int) : int = l * w * h

let%test _ = get_volume_of_cuboid 1 1 1 = 1
let%test _ = get_volume_of_cuboid 2 4 7 = 56
let%test _ = get_volume_of_cuboid 4 8 6 = 192
let%test _ = get_volume_of_cuboid 8 3 5 = 120
let%test _ = get_volume_of_cuboid 2 1 9 = 18
