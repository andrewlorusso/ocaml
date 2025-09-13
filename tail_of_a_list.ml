(* Write a function last : 'a list -> 'a option that returns the last element of a list

# last ["a" ; "b" ; "c" ; "d"];;
- : string option = Some "d"
# last [];;
- : 'a option = None

*)

let last list =
  match List.length list when
  | 0 -> []
  | 1 -> list
  | _ -> hd :: tl (fun tl ->  last tl) tl
