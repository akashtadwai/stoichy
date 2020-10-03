{
    open Printf
    open Parser
}
let digit  = ['0'-'9']
let character = ['A'-'Z' 'a'-'z'] 
let element = ['A'-'Z']['a'-'z']?
rule tokens = parse
    |';'                    {printf "SEMI"; SEMICOLON  }
    |':'                    {COLON} 
    |'"'                    {APOS}   
    |'('                    {LPAREN}
    |')'                    {RPAREN}
    |'{'                    {LBRACE}
    |'}'                    {RBRACE}
    |'['                    {LBRACKET}
    |']'                    {RBRACKET}
    |','                    {COMMA}
    |'+'                    {PLUS}
    |'-'                    {MINUS}
    |'*'                    {MUL}
    |'/'                    {DIV}
    |'%'                    {MOD} 
    |'^'                    {CONCATENATE}
    |'='                    {ASSIGN}
    |"=="                   {EQ}
    |"!="                   {NEQ}
    |'<'                    {LT}
    |"<="                   {LTQ}
    |'>'                    {GT}
    |">="                   {GTQ}
    | '&'                   {BITAND}
    | '|'                   {BITOR}
    |"&&"                   {AND}
    |"||"                   {OR}
    |'!'                    {NOT}
    | "-->"                 {ARROW} (*Remove later if not required*)
    |"if"                   {IF}
    |"else"                 {ELSE}
    |"while"                {WHILE}
    |"for"                  {FOR}
    |"int"                  {INT}
    |"double"               {DOUBLE}
    |"string"               {STRING}
    |"boolean"              {BOOLEAN}
    |"element"              {printf "element"; ELEMENT }      
    |"molecule"             {MOLECULE}
    |"equation"             {EQUATION}
    |"balance"              {BALANCE}
    |"mol_mass"             {MOLAR_MASS}
    |"mol_charge"           {MOL_CHARGE}
    |"mol_electrons"        {MOL_ELECTRON}
    (* |"mass"  as attr        {ATTRIBUTE(attr)}
    |"charge" as attr       {ATTRIBUTE{attr}}
    |"electrons" as attr    {ATTRIBUTE{attr}} *)
    |"def"                  {FUNCTION} (* diff *)
    |"object"               {OBJECT}
    |"return"               {RETURN}
    |"print"                {PRINT}   
    |"call"                 {CALL}
    |"draw"                 {DRAW}
	|"true"			   	        {TRUE}
	|"false"				        {FALSE}
    (* | (digit)+ '.'(digit)+ as lexemme  {DOUBLE(float_of_string lexemme)}
    |digit+ as lexemme         {INTEGER(int_of_string lexemme)}
    | element as lexemme       {ELEMENT_LITERAL(lexemme)}
    | (element digit+ as lexemme         {MOLECULE_LITERAL(lexemme)}
    | '"' [^'"' '\n']*'"' as lexemme           {STRING_LITERAL(lexemme)} *)
    |eof                       {exit 0} 
    | _ {NOTHING}

  (*  | "/*"		{ print_endline "multiline comments start"; multiline_comment_mode lexbuf }
    | "//"	{ singleline_comment_mode lexbuf }
    | _ {tokens lexbuf }
  (* | eof		{ raise End_of_file } *)

and singleline_comment_mode = parse
    '\n'	{ Printf.printf "single comments end\n";}
    | eof   { Printf.printf "comments end\n";raise End_of_file}
    | _ {tokens lexbuf }

and multiline_comment_mode = parse
    "*/"  { Printf.printf "multi comments end\n";tokens lexbuf}
  | eof   {Printf.printf "error: unterminated comment";raise End_of_file}
  | _ {tokens lexbuf } *)

 

  (*ocamllex lexer.mll
    ocamlyacc parser.mly
    ocamlc parser.mli  master ◼
    ocamlc lexer.ml*)

{
let main () =
let lexbuf = Lexing.from_channel stdin in
while true do
tokens lexbuf
done
   

let _ = Printexc.print main ()
} 