(* Using input chanel module

try RiskyCodeBlock with t
| exn_1
| exn_2

*)

(* anon function since return type is null? *)
let () =
  (* Ocamle is double qoute senstivie *)
  (*                 path *)
  let filename = "./foo.txt" in
    (* using exceptions to handle IO *)
    try
      (*        module namepace; open file stream <arg> *)
      let data = In_channel.with_open_text filename In_channel.input_all in
      (* IO formatting module.print stdout *)
      Printf.printf "Data:\n%s" data
    with
      (* pattern matching code block which is evalutaed when exceptions are throw in `try`*)
      | Sys_error msg -> Printf.eprintf "> [Error]: %s\n" msg
      | e -> Printf.eprintf "Default error: %s\n" (Printexc.to_string e);
