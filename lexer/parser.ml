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

open Parsing;;
let _ = parse_error;;
let yytransl_const = [|
  257 (* SEMICOLON *);
  258 (* COLON *);
  259 (* LPAREN *);
  260 (* RPAREN *);
  261 (* LBRACE *);
  262 (* RBRACE *);
  263 (* LBRACKET *);
  264 (* RBRACKET *);
  265 (* COMMA *);
  266 (* ARROW *);
  268 (* NOTHING *);
  269 (* PLUS *);
  270 (* MINUS *);
  271 (* MUL *);
  272 (* DIV *);
  273 (* MOD *);
  274 (* CONCATENATE *);
  275 (* ASSIGN *);
  276 (* EQ *);
  277 (* NEQ *);
  278 (* LT *);
  279 (* LTQ *);
  280 (* GT *);
  281 (* GTQ *);
  282 (* APOS *);
  283 (* IF *);
  284 (* ELSE *);
  285 (* FOR *);
  286 (* WHILE *);
  287 (* RETURN *);
  288 (* PRINT *);
  289 (* INT *);
  290 (* DOUBLE *);
  291 (* STRING *);
  292 (* BOOLEAN *);
  293 (* ELEMENT *);
  294 (* MOLECULE *);
  295 (* EQUATION *);
  296 (* FUNCTION *);
  297 (* BALANCE *);
  298 (* CALL *);
  299 (* ACCESS *);
  300 (* DRAW *);
  301 (* MASS *);
  302 (* CHARGE *);
  303 (* ELECTRONS *);
  304 (* MOLAR_MASS *);
  305 (* MOL_CHARGE *);
  306 (* MOL_ELECTRON *);
  307 (* BITAND *);
  308 (* BITOR *);
  309 (* AND *);
  310 (* OR *);
  311 (* NOT *);
  312 (* TRUE *);
  313 (* FALSE *);
  314 (* OBJECT *);
    0 (* EOF *);
    0|]

let yytransl_block = [|
  267 (* ATTRIBUTE *);
  315 (* DATATYPE *);
  316 (* BOOLEAN_LIT *);
  317 (* ELEMENT_LIT *);
  318 (* MOLECULE_LIT *);
  319 (* STRING_LIT *);
  320 (* ID *);
  321 (* INT_LIT *);
  322 (* DOUBLE_LIT *);
    0|]

let yylhs = "\255\255\
\001\000\001\000\001\000\001\000\000\000"

let yylen = "\002\000\
\001\000\001\000\001\000\001\000\002\000"

let yydefred = "\000\000\
\000\000\000\000\001\000\004\000\003\000\002\000\005\000"

let yydgoto = "\002\000\
\007\000"

let yysindex = "\003\000\
\223\254\000\000\000\000\000\000\000\000\000\000\000\000"

let yyrindex = "\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000"

let yygindex = "\000\000\
\000\000"

let yytablesize = 4
let yytable = "\003\000\
\004\000\005\000\006\000\001\000"

let yycheck = "\033\001\
\034\001\035\001\036\001\001\000"

let yynames_const = "\
  SEMICOLON\000\
  COLON\000\
  LPAREN\000\
  RPAREN\000\
  LBRACE\000\
  RBRACE\000\
  LBRACKET\000\
  RBRACKET\000\
  COMMA\000\
  ARROW\000\
  NOTHING\000\
  PLUS\000\
  MINUS\000\
  MUL\000\
  DIV\000\
  MOD\000\
  CONCATENATE\000\
  ASSIGN\000\
  EQ\000\
  NEQ\000\
  LT\000\
  LTQ\000\
  GT\000\
  GTQ\000\
  APOS\000\
  IF\000\
  ELSE\000\
  FOR\000\
  WHILE\000\
  RETURN\000\
  PRINT\000\
  INT\000\
  DOUBLE\000\
  STRING\000\
  BOOLEAN\000\
  ELEMENT\000\
  MOLECULE\000\
  EQUATION\000\
  FUNCTION\000\
  BALANCE\000\
  CALL\000\
  ACCESS\000\
  DRAW\000\
  MASS\000\
  CHARGE\000\
  ELECTRONS\000\
  MOLAR_MASS\000\
  MOL_CHARGE\000\
  MOL_ELECTRON\000\
  BITAND\000\
  BITOR\000\
  AND\000\
  OR\000\
  NOT\000\
  TRUE\000\
  FALSE\000\
  OBJECT\000\
  EOF\000\
  "

let yynames_block = "\
  ATTRIBUTE\000\
  DATATYPE\000\
  BOOLEAN_LIT\000\
  ELEMENT_LIT\000\
  MOLECULE_LIT\000\
  STRING_LIT\000\
  ID\000\
  INT_LIT\000\
  DOUBLE_LIT\000\
  "

let yyact = [|
  (fun _ -> failwith "parser")
; (fun __caml_parser_env ->
    Obj.repr(
# 23 "parser.mly"
          ( )
# 253 "parser.ml"
               : unit))
; (fun __caml_parser_env ->
    Obj.repr(
# 24 "parser.mly"
            (  )
# 259 "parser.ml"
               : unit))
; (fun __caml_parser_env ->
    Obj.repr(
# 25 "parser.mly"
           (  )
# 265 "parser.ml"
               : unit))
; (fun __caml_parser_env ->
    Obj.repr(
# 26 "parser.mly"
           (  )
# 271 "parser.ml"
               : unit))
(* Entry datatype *)
; (fun __caml_parser_env -> raise (Parsing.YYexit (Parsing.peek_val __caml_parser_env 0)))
|]
let yytables =
  { Parsing.actions=yyact;
    Parsing.transl_const=yytransl_const;
    Parsing.transl_block=yytransl_block;
    Parsing.lhs=yylhs;
    Parsing.len=yylen;
    Parsing.defred=yydefred;
    Parsing.dgoto=yydgoto;
    Parsing.sindex=yysindex;
    Parsing.rindex=yyrindex;
    Parsing.gindex=yygindex;
    Parsing.tablesize=yytablesize;
    Parsing.table=yytable;
    Parsing.check=yycheck;
    Parsing.error_function=parse_error;
    Parsing.names_const=yynames_const;
    Parsing.names_block=yynames_block }
let datatype (lexfun : Lexing.lexbuf -> token) (lexbuf : Lexing.lexbuf) =
   (Parsing.yyparse yytables 1 lexfun lexbuf : unit)
;;
