(* let  → define named data (values or functions) *)

(* type → define shape of data (user-defined type) *)


(* type alias *)
type point = float * float

let pos : point = (2.5, 4.0)


(* record type *)
type person =  {
    age : int;
    height: float;
    name: string;
  }

let user = {
  age = 20;
  height = 5.3;
  name = "Alice";
}



(* c++: std::optional types *)
(*
Some
None
*)

(* c++: std::expected 
Ok
Error
   *)




(*        possible `or` cases *)
type shape = Square | Circle | Triangle
(* `shape` is user defined type
   `Square` is constuctor*)

(*
let implent = ( variant = sumtype ) && ( std::variant = sumtype )



let implent = ( variant = sumtype ) && ( std::variant = sumtype )
*)

  (*let variant =  sumtype = *)



type lang = ocaml | cpp | python

type pkg_mngr =
  | uv
  | opam
  | pip


type build_system =
  | make
  | cmake
  | dune


type compiled =
  | success
  | error


(* 
parametric polymorphism
  mechanism to implement generic programming  
  function paramers which accpets many types
*)
(* 
parametric polymorphism
  parameter: type it depends on
  polymorphic: works for many types

*)
  so a wrapere type that could be any value of these types
