let rec any pred nums =
  match nums with
  | [] -> false
  (* same as head and tail? *)
  | x :: xs -> if pred x then true else any pred xs

let gt_five x = x > 5

let res = any gt_five [];;

print_endline (string_of_bool res);;

(* list *)
let ls = [1; 4; 5; 3; 5]
  print_endline "Trying to index list type";
  try
  let first_3 = ls.(0) in
  with
  | Invalid_argument meg -> Printf.printf ""




(* array *)
(*let arr = [|1 ; 4; 5; 3; 4|]*)
