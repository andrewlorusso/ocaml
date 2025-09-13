(* type → define shape of data (user-defined type) *)

d
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

