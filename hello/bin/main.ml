(* argumentos de linea de comando
let _ =
  let args = Array.to_list Sys.argv in
  Printf.printf "Argumentos:  %s\n" (String.concat " " args); *)

(* Standard Streams *)
(* Standard Input
let () = print_string "Ingrese algun valor: ";
flush stdout;
let value = read_line () in
Printf.printf "Se capturo el valor: %s" value; *)

(* Standard Output
Printf.printf "Standard Output"; *)

(* Standard Error
Printf.eprintf "Standard Error: this is an error"; *)

(* Variable de entorno
let env_var = try Sys.getenv "Env_Var" with Not_found -> "No definida" in
Printf.printf "Valor de la variable: %s" env_var; *)

(* File I/O *)

(* Create/Write
let cw = open_out "test.txt" in
Printf.fprintf cw "A test\nWith OCaml";
close_out cw; *)

(* Read *)
let rd = open_in "test.txt" in
let file_content = input_line rd in
close_in rd;
Printf.printf "%s" file_content;