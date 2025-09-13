(*
premise: build up 




write a type
  for function parameter
    for module
      for functor

Build up and then code the program with the high level constructs
Dont use a raw int. Use an int to make an expressive type.
Then use that type in the function 
wrap it in a module 

The module is the unit of building softare in ocaml

*)






module File = struct
 (* using abstract type for type safty *)
 type t = In_channel.t

  let read (file : t) : string = In_channel.input_all file
end

module Socket = struct
 type socket = string 
 let read = ()
end



(* namespaces are a workaround for function overloading *)
File.read
Socket.read


(* example 2 *)

module User = struct
  type t {
    name : string;
    age : int;
  }

  val buy : user:t -> item:Item.t -> (t, string) result

end 

module Item = struct

  type t = {
    id: int;
    name: string;
    price: float;
  }
  
end

(* only data bag no behavior*)
Item.t
Item.buy

(* 
functors 
module which takes another module as a argument
*)

