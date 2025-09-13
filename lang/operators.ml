(* immutable assignment *)
let x = 10

(*
mutable assignment
ref is a pointer to a typed location. The address value may change but type can not
*)
let counter = ref 0;
  counter := 1
  (*       dereference counter *)
  counter := !counter + 1


(* boolean negation*)
let is_active = true
let is_inactive = not is_active



(* type-system.ml *)

(* unit *)
let () =  Printf.printf "Unit type has one value with no operations"

(* bool *)
let has_two_values = true
