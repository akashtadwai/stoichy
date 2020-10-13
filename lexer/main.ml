(* file: main.ml *)
(* Assumes the parser file is "parser.mly" and the lexer file is "lexer.mll". *)
let main () =
  try
    let lexbuf = Lexing.from_channel stdin in
    while true do
      Parser.salt Lexer.tokens lexbuf
    done
  with End_of_file -> exit 0
      
let _ = Printexc.print main ()