type token =
  | SEMICOLON
  | COLON
  | LPAREN
  | RPAREN
  | LBRACE
  | RBRACE
  | LBRACKET
  | RBRACKET
  | COMMA
  | ARROW
  | ATTRIBUTE of (string)
  | NOTHING
  | PLUS
  | MINUS
  | MUL
  | DIV
  | MOD
  | CONCATENATE
  | ASSIGN
  | EQ
  | NEQ
  | LT
  | LTQ
  | GT
  | GTQ
  | APOS
  | IF
  | ELSE
  | FOR
  | WHILE
  | RETURN
  | PRINT
  | INT
  | DOUBLE
  | STRING
  | BOOLEAN
  | ELEMENT
  | MOLECULE
  | EQUATION
  | FUNCTION
  | BALANCE
  | CALL
  | ACCESS
  | DRAW
  | MASS
  | CHARGE
  | ELECTRONS
  | MOLAR_MASS
  | MOL_CHARGE
  | MOL_ELECTRON
  | BITAND
  | BITOR
  | AND
  | OR
  | NOT
  | TRUE
  | FALSE
  | OBJECT
  | DATATYPE of (string)
  | BOOLEAN_LIT of (bool)
  | ELEMENT_LIT of (string)
  | MOLECULE_LIT of (string)
  | STRING_LIT of (string)
  | ID of (string)
  | INT_LIT of (int)
  | DOUBLE_LIT of (float)
  | EOF

val datatype :
  (Lexing.lexbuf  -> token) -> Lexing.lexbuf -> unit
