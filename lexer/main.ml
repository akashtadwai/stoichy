(* file: main.ml *)
(* Assumes the parser file is "parser.mly" and the lexer file is "lexer.mll". *)
exception InvalidProgram
open Printf
let main () =
  try
    let lexbuf = Lexing.from_channel stdin in
    let prog = Parser.start Lexer.tokens lexbuf in
				if Semantic.check_program prog
					then printf "Hurray!"
					else raise InvalidProgram
  with End_of_file -> printf "plp"; exit 1
      | InvalidProgram -> ignore(Printf.printf "Invalid program. Semantic errors exist.\n");exit 1
let _ = Printexc.print main ()