let rec gather_files dir =
  match Sys.is_directory dir with
    | true -> let files = 
      Sys.readdir dir 
      |> Array.to_list 
      |> List.map (fun e -> dir ^ "/" ^ e ) 
      |> List.concat (List.map gather_files files) in
      List.filter Sys.is_regular_file 
    
  | false -> [dir]

let rec gather_files path =
  if Sys.is_directory path then
    Sys.readdir path
    |> Array.to_list
    |> List.map (fun entry -> path ^ "/" ^ entry)
    |> List.map gather_files
    |> List.concat
  else
    [path];;

(* Call it separately: *)
let all_files = gather_files "/home/andrew";;

