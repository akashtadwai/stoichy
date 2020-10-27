{
    open Printf
    open Parser
}
let digit  = ['0'-'9']
let character = ['A'-'Z' 'a'-'z']   
let element = ['A'-'Z']['a'-'z']?
rule tokens = parse
    [' ' '\t' '\r' '\n']					{ tokens lexbuf }
    |';'                    {SEMICOLON }
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
    |'.'                    {ACCESS}
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
    |"element"              {ELEMENT }      
    |"molecule"             {MOLECULE}
    |"equation"             {EQUATION}
    |"balance"              {BALANCE}
    |"mol_mass"             {MOLAR_MASS}
    |"mol_charge"           {MOL_CHARGE}
    |"mol_electrons"        {MOL_ELECTRON}
    |"mass"  as attr        {ATTRIBUTE(attr)}
    |"charge" as attr       {ATTRIBUTE(attr)}
    |"electrons" as attr    {ATTRIBUTE(attr)}
    |"def"                  {FUNCTION} (* diff *)
    |"object"               {OBJECT}
    |"return"               {RETURN}
    |"print"                {PRINT}   
    |"call"                 {CALL}
    |"draw"                 {DRAW}
	|"true"			   	    {TRUE}
    |"false"	            {FALSE}
    | (digit)+ '.'(digit)+ as lexemme  {DOUBLE_LITERAL(float_of_string lexemme)}
    |digit+ as lexemme         {INTEGER_LITERAL(int_of_string lexemme)}
    | element as lexemme       {ELEMENT_LITERAL(lexemme)}
    | (element digit*)+ as lexemme         {MOLECULE_LITERAL(lexemme)}
    | '"' [^'"' '\n']*'"' as lexemme           {STRING_LITERAL(lexemme)}
    |['a' - 'z'](character|digit)* as lexemme { ID(lexemme)}
    | eof                       {EOF} 
    | _ {printf "Invalid";tokens lexbuf}

    | "/*"		{ print_endline "multiline comments start\n"; multiline_comment_mode lexbuf }
    | "//"	{ print_endline "single line comments start\n";singleline_comment_mode lexbuf }
    | _ {tokens lexbuf }

and singleline_comment_mode = parse
    '\n'	{printf "single comments end\n";tokens lexbuf}
    | eof   {printf "comments end\n";EOF}
    | _ {singleline_comment_mode lexbuf }

and multiline_comment_mode = parse
    "*/"  { Printf.printf "multi comments end";tokens lexbuf}
  | eof   {Printf.printf "error: unterminated comment\n";EOF}
  | _ {multiline_comment_mode lexbuf}