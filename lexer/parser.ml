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

open Parsing;;
let _ = parse_error;;
# 2 "parser.mly"
	open Printf
	open Ast
	let parse_error s = print_endline s;
	flush stdout
# 79 "parser.ml"
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
  301 (* NEWLINE *);
  302 (* MASS *);
  303 (* CHARGE *);
  304 (* ELECTRONS *);
  305 (* MOLAR_MASS *);
  306 (* MOL_CHARGE *);
  307 (* MOL_ELECTRON *);
  308 (* BITAND *);
  309 (* BITOR *);
  310 (* AND *);
  311 (* OR *);
  312 (* NOT *);
  313 (* TRUE *);
  314 (* FALSE *);
  315 (* OBJECT *);
    0 (* EOF *);
    0|]

let yytransl_block = [|
  267 (* ATTRIBUTE *);
  316 (* DATATYPE *);
  317 (* BOOLEAN_LITERAL *);
  318 (* ELEMENT_LITERAL *);
  319 (* MOLECULE_LITERAL *);
  320 (* STRING_LITERAL *);
  321 (* ID *);
  322 (* INTEGER_LITERAL *);
  323 (* DOUBLE_LITERAL *);
    0|]

let yylhs = "\255\255\
\001\000\001\000\003\000\003\000\003\000\003\000\004\000\004\000\
\004\000\004\000\005\000\006\000\007\000\007\000\008\000\008\000\
\009\000\010\000\011\000\011\000\012\000\013\000\013\000\014\000\
\014\000\015\000\015\000\016\000\017\000\017\000\018\000\018\000\
\018\000\018\000\018\000\018\000\018\000\020\000\020\000\019\000\
\019\000\019\000\019\000\019\000\019\000\019\000\019\000\019\000\
\019\000\019\000\019\000\019\000\019\000\019\000\019\000\019\000\
\019\000\019\000\019\000\019\000\019\000\019\000\002\000\000\000"

let yylen = "\002\000\
\000\000\002\000\001\000\001\000\001\000\001\000\001\000\001\000\
\001\000\001\000\001\000\001\000\000\000\001\000\001\000\003\000\
\002\000\003\000\000\000\002\000\010\000\000\000\002\000\003\000\
\001\000\003\000\001\000\006\000\000\000\002\000\002\000\003\000\
\003\000\003\000\007\000\009\000\005\000\000\000\002\000\001\000\
\001\000\007\000\003\000\003\000\003\000\003\000\003\000\003\000\
\003\000\003\000\003\000\003\000\003\000\003\000\003\000\003\000\
\003\000\003\000\003\000\004\000\004\000\004\000\011\000\002\000"

let yydefred = "\000\000\
\001\000\000\000\000\000\000\000\002\000\000\000\000\000\003\000\
\006\000\005\000\004\000\000\000\000\000\000\000\015\000\009\000\
\010\000\008\000\007\000\017\000\000\000\000\000\019\000\016\000\
\000\000\000\000\020\000\000\000\000\000\000\000\023\000\000\000\
\018\000\000\000\000\000\030\000\000\000\000\000\000\000\000\000\
\038\000\063\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\040\000\000\000\039\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\031\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\011\000\025\000\
\000\000\059\000\034\000\000\000\000\000\000\000\032\000\033\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\043\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\061\000\060\000\062\000\000\000\028\000\
\024\000\000\000\000\000\037\000\000\000\000\000\000\000\000\000\
\000\000\000\000\035\000\000\000\042\000\021\000\000\000\036\000"

let yydgoto = "\002\000\
\003\000\005\000\012\000\053\000\088\000\000\000\013\000\014\000\
\015\000\027\000\025\000\031\000\028\000\089\000\000\000\036\000\
\032\000\054\000\055\000\037\000"

let yysindex = "\007\000\
\000\000\000\000\231\254\219\254\000\000\040\255\234\254\000\000\
\000\000\000\000\000\000\025\255\044\255\045\255\000\000\000\000\
\000\000\000\000\000\000\000\000\051\255\234\254\000\000\000\000\
\234\254\025\255\000\000\028\255\069\255\030\255\000\000\056\255\
\000\000\090\255\049\255\000\000\114\255\037\255\105\255\014\255\
\000\000\000\000\110\255\119\255\125\255\014\255\014\255\025\255\
\126\255\139\255\145\255\000\000\151\255\000\000\019\000\147\255\
\102\255\206\000\120\255\014\255\014\255\014\255\062\000\105\000\
\167\255\025\255\025\255\025\255\014\255\000\000\014\255\014\255\
\014\255\014\255\014\255\014\255\014\255\014\255\014\255\014\255\
\014\255\014\255\162\255\014\255\014\255\109\255\000\000\000\000\
\000\255\000\000\000\000\249\000\148\000\008\001\000\000\000\000\
\102\255\177\255\184\255\190\255\064\001\064\001\064\001\064\001\
\064\001\064\001\064\001\064\001\064\001\064\001\064\001\064\001\
\064\001\000\000\064\001\064\001\193\255\208\255\102\255\160\255\
\014\255\160\255\009\255\000\000\000\000\000\000\144\255\000\000\
\000\000\183\255\191\000\000\000\102\255\212\255\160\255\014\255\
\055\255\218\255\000\000\051\001\000\000\000\000\160\255\000\000"

let yyrindex = "\000\000\
\000\000\000\000\217\000\000\000\000\000\000\000\217\255\000\000\
\000\000\000\000\000\000\000\000\000\000\223\255\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\020\255\000\000\000\000\068\255\000\000\000\000\000\000\166\255\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\232\255\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\001\255\026\255\071\255\100\255\
\101\255\117\255\123\255\134\255\135\255\136\255\153\255\154\255\
\199\255\000\000\200\255\214\255\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"

let yygindex = "\000\000\
\000\000\000\000\195\000\043\000\115\000\000\000\000\000\000\000\
\213\000\000\000\000\000\000\000\000\000\169\255\000\000\000\000\
\000\000\137\255\216\255\196\000"

let yytablesize = 631
let yytable = "\058\000\
\130\000\058\000\132\000\118\000\058\000\063\000\064\000\001\000\
\119\000\123\000\008\000\009\000\010\000\011\000\004\000\139\000\
\040\000\119\000\133\000\092\000\093\000\094\000\022\000\144\000\
\022\000\022\000\044\000\006\000\101\000\044\000\102\000\103\000\
\104\000\105\000\106\000\107\000\108\000\109\000\110\000\111\000\
\112\000\113\000\007\000\115\000\116\000\137\000\022\000\021\000\
\022\000\022\000\022\000\022\000\048\000\022\000\020\000\023\000\
\022\000\022\000\022\000\049\000\050\000\051\000\141\000\119\000\
\030\000\022\000\022\000\022\000\029\000\033\000\029\000\045\000\
\029\000\029\000\045\000\016\000\017\000\018\000\019\000\052\000\
\131\000\022\000\022\000\022\000\022\000\022\000\016\000\017\000\
\018\000\019\000\065\000\034\000\038\000\035\000\029\000\140\000\
\029\000\029\000\029\000\029\000\046\000\047\000\056\000\046\000\
\047\000\029\000\029\000\057\000\098\000\099\000\100\000\039\000\
\060\000\029\000\029\000\029\000\040\000\048\000\041\000\042\000\
\048\000\061\000\040\000\057\000\041\000\091\000\057\000\062\000\
\066\000\029\000\029\000\029\000\029\000\029\000\049\000\050\000\
\051\000\049\000\050\000\051\000\043\000\067\000\044\000\045\000\
\046\000\047\000\043\000\068\000\044\000\045\000\046\000\047\000\
\048\000\053\000\052\000\086\000\053\000\052\000\048\000\049\000\
\050\000\051\000\040\000\087\000\041\000\049\000\050\000\051\000\
\038\000\069\000\038\000\038\000\114\000\097\000\117\000\016\000\
\017\000\018\000\019\000\052\000\124\000\016\000\017\000\018\000\
\019\000\052\000\043\000\125\000\044\000\045\000\046\000\047\000\
\038\000\126\000\038\000\038\000\038\000\038\000\048\000\054\000\
\055\000\127\000\054\000\055\000\038\000\049\000\050\000\051\000\
\128\000\134\000\135\000\038\000\038\000\038\000\056\000\138\000\
\064\000\056\000\142\000\026\000\013\000\016\000\017\000\018\000\
\019\000\052\000\014\000\038\000\038\000\038\000\038\000\038\000\
\041\000\129\000\024\000\041\000\059\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\041\000\041\000\041\000\041\000\
\041\000\041\000\000\000\041\000\041\000\041\000\041\000\041\000\
\041\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\041\000\070\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\041\000\041\000\071\000\
\072\000\073\000\074\000\075\000\076\000\000\000\077\000\078\000\
\079\000\080\000\081\000\082\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\083\000\095\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\084\000\085\000\071\000\072\000\073\000\074\000\075\000\076\000\
\000\000\077\000\078\000\079\000\080\000\081\000\082\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\083\000\096\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\084\000\085\000\071\000\072\000\073\000\
\074\000\075\000\076\000\000\000\077\000\078\000\079\000\080\000\
\081\000\082\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\083\000\121\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\084\000\085\000\
\071\000\072\000\073\000\074\000\075\000\076\000\000\000\077\000\
\078\000\079\000\080\000\081\000\082\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\083\000\136\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\084\000\085\000\071\000\072\000\073\000\074\000\075\000\
\076\000\090\000\077\000\078\000\079\000\080\000\081\000\082\000\
\000\000\000\000\071\000\072\000\073\000\074\000\075\000\076\000\
\000\000\077\000\078\000\079\000\080\000\081\000\082\000\000\000\
\000\000\083\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\084\000\085\000\000\000\000\000\
\083\000\000\000\000\000\000\000\120\000\000\000\000\000\000\000\
\000\000\000\000\000\000\084\000\085\000\071\000\072\000\073\000\
\074\000\075\000\076\000\122\000\077\000\078\000\079\000\080\000\
\081\000\082\000\000\000\000\000\071\000\072\000\073\000\074\000\
\075\000\076\000\000\000\077\000\078\000\079\000\080\000\081\000\
\082\000\000\000\000\000\083\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\084\000\085\000\
\000\000\000\000\083\000\000\000\000\000\000\000\143\000\000\000\
\000\000\000\000\000\000\000\000\000\000\084\000\085\000\071\000\
\072\000\073\000\074\000\075\000\076\000\000\000\077\000\078\000\
\079\000\080\000\081\000\082\000\071\000\072\000\073\000\074\000\
\075\000\076\000\000\000\077\000\078\000\079\000\080\000\081\000\
\082\000\000\000\000\000\000\000\000\000\083\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\084\000\085\000\083\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\084\000\085\000"

let yycheck = "\040\000\
\120\000\001\001\122\000\004\001\004\001\046\000\047\000\001\000\
\009\001\097\000\033\001\034\001\035\001\036\001\040\001\135\000\
\003\001\009\001\010\001\060\000\061\000\062\000\003\001\143\000\
\005\001\006\001\001\001\065\001\069\000\004\001\071\000\072\000\
\073\000\074\000\075\000\076\000\077\000\078\000\079\000\080\000\
\081\000\082\000\003\001\084\000\085\000\133\000\027\001\004\001\
\029\001\030\001\031\001\032\001\039\001\009\001\012\000\005\001\
\037\001\038\001\039\001\046\001\047\001\048\001\008\001\009\001\
\037\001\046\001\047\001\048\001\026\000\001\001\003\001\001\001\
\005\001\006\001\004\001\062\001\063\001\064\001\065\001\066\001\
\121\000\062\001\063\001\064\001\065\001\066\001\062\001\063\001\
\064\001\065\001\048\000\062\001\003\001\038\001\027\001\136\000\
\029\001\030\001\031\001\032\001\001\001\001\001\066\001\004\001\
\004\001\038\001\039\001\003\001\066\000\067\000\068\000\063\001\
\003\001\046\001\047\001\048\001\003\001\001\001\005\001\006\001\
\004\001\003\001\003\001\001\001\005\001\006\001\004\001\003\001\
\003\001\062\001\063\001\064\001\065\001\066\001\001\001\001\001\
\001\001\004\001\004\001\004\001\027\001\003\001\029\001\030\001\
\031\001\032\001\027\001\003\001\029\001\030\001\031\001\032\001\
\039\001\001\001\001\001\009\001\004\001\004\001\039\001\046\001\
\047\001\048\001\003\001\062\001\005\001\046\001\047\001\048\001\
\003\001\019\001\005\001\006\001\011\001\007\001\066\001\062\001\
\063\001\064\001\065\001\066\001\004\001\062\001\063\001\064\001\
\065\001\066\001\027\001\004\001\029\001\030\001\031\001\032\001\
\027\001\004\001\029\001\030\001\031\001\032\001\039\001\001\001\
\001\001\009\001\004\001\004\001\039\001\046\001\047\001\048\001\
\001\001\066\001\028\001\046\001\047\001\048\001\001\001\004\001\
\000\000\004\001\001\001\025\000\004\001\062\001\063\001\064\001\
\065\001\066\001\004\001\062\001\063\001\064\001\065\001\066\001\
\001\001\119\000\022\000\004\001\041\000\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\013\001\014\001\015\001\016\001\
\017\001\018\001\255\255\020\001\021\001\022\001\023\001\024\001\
\025\001\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\043\001\001\001\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\054\001\055\001\013\001\
\014\001\015\001\016\001\017\001\018\001\255\255\020\001\021\001\
\022\001\023\001\024\001\025\001\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\043\001\001\001\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\054\001\055\001\013\001\014\001\015\001\016\001\017\001\018\001\
\255\255\020\001\021\001\022\001\023\001\024\001\025\001\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\043\001\001\001\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\054\001\055\001\013\001\014\001\015\001\
\016\001\017\001\018\001\255\255\020\001\021\001\022\001\023\001\
\024\001\025\001\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\043\001\001\001\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\054\001\055\001\
\013\001\014\001\015\001\016\001\017\001\018\001\255\255\020\001\
\021\001\022\001\023\001\024\001\025\001\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\043\001\001\001\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\054\001\055\001\013\001\014\001\015\001\016\001\017\001\
\018\001\004\001\020\001\021\001\022\001\023\001\024\001\025\001\
\255\255\255\255\013\001\014\001\015\001\016\001\017\001\018\001\
\255\255\020\001\021\001\022\001\023\001\024\001\025\001\255\255\
\255\255\043\001\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\054\001\055\001\255\255\255\255\
\043\001\255\255\255\255\255\255\004\001\255\255\255\255\255\255\
\255\255\255\255\255\255\054\001\055\001\013\001\014\001\015\001\
\016\001\017\001\018\001\004\001\020\001\021\001\022\001\023\001\
\024\001\025\001\255\255\255\255\013\001\014\001\015\001\016\001\
\017\001\018\001\255\255\020\001\021\001\022\001\023\001\024\001\
\025\001\255\255\255\255\043\001\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\054\001\055\001\
\255\255\255\255\043\001\255\255\255\255\255\255\004\001\255\255\
\255\255\255\255\255\255\255\255\255\255\054\001\055\001\013\001\
\014\001\015\001\016\001\017\001\018\001\255\255\020\001\021\001\
\022\001\023\001\024\001\025\001\013\001\014\001\015\001\016\001\
\017\001\018\001\255\255\020\001\021\001\022\001\023\001\024\001\
\025\001\255\255\255\255\255\255\255\255\043\001\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\054\001\055\001\043\001\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\054\001\055\001"

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
  NEWLINE\000\
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
  BOOLEAN_LITERAL\000\
  ELEMENT_LITERAL\000\
  MOLECULE_LITERAL\000\
  STRING_LITERAL\000\
  ID\000\
  INTEGER_LITERAL\000\
  DOUBLE_LITERAL\000\
  "

let yyact = [|
  (fun _ -> failwith "parser")
; (fun __caml_parser_env ->
    Obj.repr(
# 29 "parser.mly"
  ([])
# 487 "parser.ml"
               : Ast.program))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : Ast.program) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'fdecl) in
    Obj.repr(
# 30 "parser.mly"
               ((_2 :: _1))
# 495 "parser.ml"
               : Ast.program))
; (fun __caml_parser_env ->
    Obj.repr(
# 33 "parser.mly"
     ( IntType )
# 501 "parser.ml"
               : 'datatypes))
; (fun __caml_parser_env ->
    Obj.repr(
# 34 "parser.mly"
           ( BooleanType )
# 507 "parser.ml"
               : 'datatypes))
; (fun __caml_parser_env ->
    Obj.repr(
# 35 "parser.mly"
          ( StringType )
# 513 "parser.ml"
               : 'datatypes))
; (fun __caml_parser_env ->
    Obj.repr(
# 36 "parser.mly"
          ( DoubleType )
# 519 "parser.ml"
               : 'datatypes))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 39 "parser.mly"
     ( _1 )
# 526 "parser.ml"
               : 'variables))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 40 "parser.mly"
                    ( _1 )
# 533 "parser.ml"
               : 'variables))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 41 "parser.mly"
                    ( _1)
# 540 "parser.ml"
               : 'variables))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 42 "parser.mly"
                     ( _1 )
# 547 "parser.ml"
               : 'variables))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 44 "parser.mly"
                  ( Element ( _1 ) )
# 554 "parser.ml"
               : 'element))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 46 "parser.mly"
                 ( Molecule ( _1 ) )
# 561 "parser.ml"
               : 'molecule))
; (fun __caml_parser_env ->
    Obj.repr(
# 50 "parser.mly"
     ( [] )
# 567 "parser.ml"
               : 'argument_opt))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'argument_list) in
    Obj.repr(
# 51 "parser.mly"
                 ( List.rev _1 )
# 574 "parser.ml"
               : 'argument_opt))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'parameter_declarations) in
    Obj.repr(
# 54 "parser.mly"
                        ( [_1 ])
# 581 "parser.ml"
               : 'argument_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'argument_list) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'parameter_declarations) in
    Obj.repr(
# 55 "parser.mly"
                                              ( _3 :: _1 )
# 589 "parser.ml"
               : 'argument_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'datatypes) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'variables) in
    Obj.repr(
# 59 "parser.mly"
 ( { name = _2 ;
 		paramtype = _1 
	} )
# 599 "parser.ml"
               : 'parameter_declarations))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'datatypes) in
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'variables) in
    Obj.repr(
# 65 "parser.mly"
 ( {name = _2 ; 
	vtype = _1 ;
	 } )
# 609 "parser.ml"
               : 'simple_statement))
; (fun __caml_parser_env ->
    Obj.repr(
# 70 "parser.mly"
   ( [] )
# 615 "parser.ml"
               : 'simple_statement_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'simple_statement_list) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'simple_statement) in
    Obj.repr(
# 71 "parser.mly"
                                          ( List.rev( _2 :: _1))
# 623 "parser.ml"
               : 'simple_statement_list))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 8 : string) in
    let _4 = (Parsing.peek_val __caml_parser_env 6 : int) in
    let _6 = (Parsing.peek_val __caml_parser_env 4 : int) in
    let _8 = (Parsing.peek_val __caml_parser_env 2 : int) in
    Obj.repr(
# 76 "parser.mly"
 ({ name = _2 ;
	   mass = _4 ; 
	   electrons = _6 ; 
	   charge = _8;
	 })
# 637 "parser.ml"
               : 'e_declaration))
; (fun __caml_parser_env ->
    Obj.repr(
# 83 "parser.mly"
    ( [] )
# 643 "parser.ml"
               : 'e_declaration_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'e_declaration_list) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'e_declaration) in
    Obj.repr(
# 84 "parser.mly"
                                    ( List.rev(_2 ::_1) )
# 651 "parser.ml"
               : 'e_declaration_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'element_list) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'element) in
    Obj.repr(
# 87 "parser.mly"
                              ( (_3 :: _1) )
# 659 "parser.ml"
               : 'element_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'element) in
    Obj.repr(
# 88 "parser.mly"
              ( [_1] )
# 666 "parser.ml"
               : 'element_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'molecule_list) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'molecule) in
    Obj.repr(
# 91 "parser.mly"
                               ( (_3 :: _1) )
# 674 "parser.ml"
               : 'molecule_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'molecule) in
    Obj.repr(
# 92 "parser.mly"
               ( [_1] )
# 681 "parser.ml"
               : 'molecule_list))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 4 : string) in
    let _4 = (Parsing.peek_val __caml_parser_env 2 : 'element_list) in
    Obj.repr(
# 97 "parser.mly"
 ({ name = _2 ; 
	 elements = _4; 
	})
# 691 "parser.ml"
               : 'm_declaration))
; (fun __caml_parser_env ->
    Obj.repr(
# 102 "parser.mly"
  ( [] )
# 697 "parser.ml"
               : 'm_declaration_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'm_declaration_list) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'm_declaration) in
    Obj.repr(
# 103 "parser.mly"
                                    ( List.rev (_2 ::_1) )
# 705 "parser.ml"
               : 'm_declaration_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'expr) in
    Obj.repr(
# 105 "parser.mly"
                 (Expr(_1))
# 712 "parser.ml"
               : 'statement))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'expr) in
    Obj.repr(
# 106 "parser.mly"
                           (Return(_2))
# 719 "parser.ml"
               : 'statement))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'expr) in
    Obj.repr(
# 107 "parser.mly"
                              (Print(_2))
# 726 "parser.ml"
               : 'statement))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'statement_list) in
    Obj.repr(
# 108 "parser.mly"
                               (Block(List.rev _2))
# 733 "parser.ml"
               : 'statement))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 4 : 'expr) in
    let _5 = (Parsing.peek_val __caml_parser_env 2 : 'statement) in
    let _7 = (Parsing.peek_val __caml_parser_env 0 : 'statement) in
    Obj.repr(
# 110 "parser.mly"
                                                  (If(_3,_5,_7))
# 742 "parser.ml"
               : 'statement))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 6 : 'expr) in
    let _5 = (Parsing.peek_val __caml_parser_env 4 : 'expr) in
    let _7 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _9 = (Parsing.peek_val __caml_parser_env 0 : 'statement) in
    Obj.repr(
# 111 "parser.mly"
                                                                  (For(_3,_5,_7,_9))
# 752 "parser.ml"
               : 'statement))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _5 = (Parsing.peek_val __caml_parser_env 0 : 'statement) in
    Obj.repr(
# 112 "parser.mly"
                                     (While(_3,_5))
# 760 "parser.ml"
               : 'statement))
; (fun __caml_parser_env ->
    Obj.repr(
# 115 "parser.mly"
 ( [] )
# 766 "parser.ml"
               : 'statement_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'statement_list) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'statement) in
    Obj.repr(
# 116 "parser.mly"
                            ( _2 :: _1 )
# 774 "parser.ml"
               : 'statement_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 118 "parser.mly"
                 ( Int(_1) )
# 781 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'variables) in
    Obj.repr(
# 119 "parser.mly"
              ( String(_1) )
# 788 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 5 : 'variables) in
    let _4 = (Parsing.peek_val __caml_parser_env 3 : 'element_list) in
    let _6 = (Parsing.peek_val __caml_parser_env 1 : 'element_list) in
    Obj.repr(
# 121 "parser.mly"
(Equation (_2, _4, _6) )
# 797 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 122 "parser.mly"
                        ( Access(_1, _3) )
# 805 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 123 "parser.mly"
                    ( Binop(_1, Add, _3) )
# 813 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 124 "parser.mly"
                     ( Binop(_1, Sub, _3) )
# 821 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 125 "parser.mly"
                   ( Binop(_1, Mul, _3) )
# 829 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 126 "parser.mly"
                   ( Binop(_1, Div, _3) )
# 837 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 127 "parser.mly"
                   ( Binop(_1, Mod, _3) )
# 845 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 128 "parser.mly"
                  ( Boolean(_1, Eq, _3) )
# 853 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 129 "parser.mly"
                   ( Boolean(_1, Neq, _3) )
# 861 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 130 "parser.mly"
                  ( Boolean(_1, Lt, _3) )
# 869 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 131 "parser.mly"
                  ( Boolean(_1, Gt, _3) )
# 877 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 132 "parser.mly"
                   ( Boolean(_1, Ltq, _3) )
# 885 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 133 "parser.mly"
                   ( Boolean(_1, Gtq, _3) )
# 893 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 134 "parser.mly"
                   ( Brela(_1, And, _3) )
# 901 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 135 "parser.mly"
                  ( Brela(_1, Or, _3) )
# 909 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 136 "parser.mly"
                           ( Concat(_1, _3) )
# 917 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'variables) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 137 "parser.mly"
                        (Asn(_1,_3))
# 925 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'expr) in
    Obj.repr(
# 138 "parser.mly"
                         (Bracket(_2))
# 932 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 1 : 'variables) in
    Obj.repr(
# 139 "parser.mly"
                                (Charge(_3))
# 939 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 1 : 'variables) in
    Obj.repr(
# 140 "parser.mly"
                                 (Mass(_3))
# 946 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 1 : 'variables) in
    Obj.repr(
# 141 "parser.mly"
                                    (Electrons(_3))
# 953 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 9 : string) in
    let _4 = (Parsing.peek_val __caml_parser_env 7 : 'argument_opt) in
    let _7 = (Parsing.peek_val __caml_parser_env 4 : 'simple_statement_list) in
    let _8 = (Parsing.peek_val __caml_parser_env 3 : 'e_declaration_list) in
    let _9 = (Parsing.peek_val __caml_parser_env 2 : 'm_declaration_list) in
    let _10 = (Parsing.peek_val __caml_parser_env 1 : 'statement_list) in
    Obj.repr(
# 146 "parser.mly"
({
		printf "heya";
		name = _2;
		arguments = _4; 
		locals = List.rev _7;
		elements =  List.rev _8;
		molecules = List.rev _9;
		body = List.rev _10
})
# 973 "parser.ml"
               : 'fdecl))
(* Entry salt *)
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
let salt (lexfun : Lexing.lexbuf -> token) (lexbuf : Lexing.lexbuf) =
   (Parsing.yyparse yytables 1 lexfun lexbuf : Ast.program)
