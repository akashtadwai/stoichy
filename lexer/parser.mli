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
  | NEWLINE
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
  | BOOLEAN_LITERAL of (bool)
  | ELEMENT_LITERAL of (string)
  | MOLECULE_LITERAL of (string)
  | STRING_LITERAL of (string)
  | ID of (string)
  | INTEGER_LITERAL of (int)
  | DOUBLE_LITERAL of (float)
  | EOF

val salt :
  (Lexing.lexbuf  -> token) -> Lexing.lexbuf -> Ast.program
