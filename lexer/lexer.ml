# 1 "lexer.mll"
 
    open Printf
    open Parser

# 7 "lexer.ml"
let __ocaml_lex_tables = {
  Lexing.lex_base =
   "\000\000\202\255\203\255\003\000\000\000\004\000\002\000\006\000\
    \002\000\009\000\005\000\021\000\029\000\003\000\020\000\027\000\
    \003\000\001\000\002\000\003\000\004\000\005\000\240\255\241\255\
    \242\255\243\255\001\000\245\255\246\255\247\255\248\255\249\255\
    \250\255\251\255\252\255\253\255\254\255\255\255\005\000\227\255\
    \238\255\237\255\235\255\233\255\230\255\229\255\014\000\226\255\
    \222\255\014\000\033\000\001\000\007\000\225\255\035\000\028\000\
    \023\000\218\255\044\000\026\000\038\000\033\000\035\000\216\255\
    \041\000\039\000\048\000\224\255\042\000\037\000\223\255\037\000\
    \052\000\204\255\057\000\053\000\039\000\059\000\050\000\058\000\
    \221\255\211\255\041\000\206\255\047\000\057\000\053\000\061\000\
    \220\255\057\000\055\000\059\000\067\000\072\000\060\000\219\255\
    \074\000\062\000\074\000\073\000\215\255\067\000\081\000\078\000\
    \079\000\063\000\073\000\082\000\217\255\076\000\081\000\089\000\
    \073\000\074\000\214\255\093\000\077\000\089\000\092\000\213\255\
    \093\000\096\000\080\000\083\000\087\000\089\000\085\000\212\255\
    \095\000\101\000\104\000\088\000\210\255\089\000\089\000\093\000\
    \098\000\209\255\104\000\100\000\095\000\208\255\104\000\105\000\
    \207\255\097\000\114\000\205\255";
  Lexing.lex_backtrk =
   "\255\255\255\255\255\255\053\000\053\000\053\000\053\000\053\000\
    \053\000\053\000\053\000\053\000\053\000\053\000\053\000\053\000\
    \024\000\023\000\021\000\019\000\027\000\016\000\255\255\255\255\
    \255\255\255\255\011\000\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255";
  Lexing.lex_default =
   "\001\000\000\000\000\000\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\000\000\000\000\
    \000\000\000\000\255\255\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\255\255\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\255\255\000\000\
    \000\000\255\255\255\255\255\255\255\255\000\000\255\255\255\255\
    \255\255\000\000\255\255\255\255\255\255\255\255\255\255\000\000\
    \255\255\255\255\255\255\000\000\255\255\255\255\000\000\255\255\
    \255\255\000\000\255\255\255\255\255\255\255\255\255\255\255\255\
    \000\000\000\000\255\255\000\000\255\255\255\255\255\255\255\255\
    \000\000\255\255\255\255\255\255\255\255\255\255\255\255\000\000\
    \255\255\255\255\255\255\255\255\000\000\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\000\000\255\255\255\255\255\255\
    \255\255\255\255\000\000\255\255\255\255\255\255\255\255\000\000\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\000\000\
    \255\255\255\255\255\255\255\255\000\000\255\255\255\255\255\255\
    \255\255\000\000\255\255\255\255\255\255\000\000\255\255\255\255\
    \000\000\255\255\255\255\000\000";
  Lexing.lex_trans =
   "\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\020\000\035\000\000\000\000\000\023\000\017\000\044\000\
    \034\000\033\000\025\000\027\000\028\000\026\000\038\000\024\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\036\000\037\000\019\000\021\000\018\000\043\000\
    \042\000\041\000\040\000\039\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\030\000\000\000\029\000\022\000\000\000\
    \000\000\142\000\009\000\004\000\011\000\014\000\012\000\133\000\
    \128\000\015\000\089\000\064\000\053\000\008\000\054\000\007\000\
    \005\000\101\000\006\000\010\000\003\000\145\000\138\000\013\000\
    \090\000\084\000\075\000\032\000\016\000\031\000\068\000\045\000\
    \050\000\047\000\048\000\058\000\076\000\049\000\051\000\074\000\
    \055\000\046\000\056\000\057\000\069\000\059\000\060\000\061\000\
    \062\000\063\000\065\000\066\000\052\000\067\000\071\000\070\000\
    \072\000\073\000\082\000\081\000\077\000\078\000\079\000\080\000\
    \083\000\085\000\086\000\087\000\088\000\096\000\091\000\092\000\
    \093\000\094\000\095\000\097\000\098\000\099\000\100\000\102\000\
    \103\000\110\000\105\000\109\000\106\000\107\000\104\000\108\000\
    \120\000\115\000\112\000\111\000\113\000\114\000\116\000\117\000\
    \118\000\119\000\121\000\122\000\123\000\124\000\125\000\126\000\
    \127\000\129\000\130\000\131\000\132\000\134\000\135\000\136\000\
    \137\000\139\000\140\000\141\000\143\000\144\000\146\000\147\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \002\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000";
  Lexing.lex_check =
   "\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\000\000\000\000\255\255\255\255\000\000\000\000\017\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\026\000\000\000\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\000\000\000\000\000\000\000\000\000\000\018\000\
    \019\000\020\000\021\000\038\000\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\000\000\255\255\000\000\000\000\255\255\
    \255\255\004\000\000\000\000\000\000\000\000\000\000\000\006\000\
    \007\000\000\000\009\000\013\000\052\000\000\000\051\000\000\000\
    \000\000\008\000\000\000\000\000\000\000\003\000\005\000\000\000\
    \009\000\010\000\011\000\000\000\000\000\000\000\012\000\016\000\
    \014\000\015\000\046\000\049\000\011\000\014\000\050\000\011\000\
    \054\000\015\000\055\000\056\000\012\000\058\000\059\000\060\000\
    \061\000\062\000\064\000\065\000\050\000\066\000\068\000\069\000\
    \071\000\072\000\074\000\075\000\076\000\077\000\078\000\079\000\
    \082\000\084\000\085\000\086\000\087\000\089\000\090\000\091\000\
    \092\000\093\000\094\000\096\000\097\000\098\000\099\000\101\000\
    \102\000\103\000\104\000\103\000\105\000\106\000\102\000\107\000\
    \109\000\110\000\111\000\103\000\112\000\113\000\115\000\116\000\
    \117\000\118\000\120\000\121\000\122\000\123\000\124\000\125\000\
    \126\000\128\000\129\000\130\000\131\000\133\000\134\000\135\000\
    \136\000\138\000\139\000\140\000\142\000\143\000\145\000\146\000\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \000\000\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255";
  Lexing.lex_base_code =
   "";
  Lexing.lex_backtrk_code =
   "";
  Lexing.lex_default_code =
   "";
  Lexing.lex_trans_code =
   "";
  Lexing.lex_check_code =
   "";
  Lexing.lex_code =
   "";
}

let rec tokens lexbuf =
   __ocaml_lex_tokens_rec lexbuf 0
and __ocaml_lex_tokens_rec lexbuf __ocaml_lex_state =
  match Lexing.engine __ocaml_lex_tables __ocaml_lex_state lexbuf with
      | 0 ->
# 9 "lexer.mll"
                            (printf "SEMI"; SEMICOLON  )
# 186 "lexer.ml"

  | 1 ->
# 10 "lexer.mll"
                            (COLON)
# 191 "lexer.ml"

  | 2 ->
# 11 "lexer.mll"
                            (APOS)
# 196 "lexer.ml"

  | 3 ->
# 12 "lexer.mll"
                            (LPAREN)
# 201 "lexer.ml"

  | 4 ->
# 13 "lexer.mll"
                            (RPAREN)
# 206 "lexer.ml"

  | 5 ->
# 14 "lexer.mll"
                            (LBRACE)
# 211 "lexer.ml"

  | 6 ->
# 15 "lexer.mll"
                            (RBRACE)
# 216 "lexer.ml"

  | 7 ->
# 16 "lexer.mll"
                            (LBRACKET)
# 221 "lexer.ml"

  | 8 ->
# 17 "lexer.mll"
                            (RBRACKET)
# 226 "lexer.ml"

  | 9 ->
# 18 "lexer.mll"
                            (COMMA)
# 231 "lexer.ml"

  | 10 ->
# 19 "lexer.mll"
                            (PLUS)
# 236 "lexer.ml"

  | 11 ->
# 20 "lexer.mll"
                            (MINUS)
# 241 "lexer.ml"

  | 12 ->
# 21 "lexer.mll"
                            (MUL)
# 246 "lexer.ml"

  | 13 ->
# 22 "lexer.mll"
                            (DIV)
# 251 "lexer.ml"

  | 14 ->
# 23 "lexer.mll"
                            (MOD)
# 256 "lexer.ml"

  | 15 ->
# 24 "lexer.mll"
                            (CONCATENATE)
# 261 "lexer.ml"

  | 16 ->
# 25 "lexer.mll"
                            (ASSIGN)
# 266 "lexer.ml"

  | 17 ->
# 26 "lexer.mll"
                            (EQ)
# 271 "lexer.ml"

  | 18 ->
# 27 "lexer.mll"
                            (NEQ)
# 276 "lexer.ml"

  | 19 ->
# 28 "lexer.mll"
                            (LT)
# 281 "lexer.ml"

  | 20 ->
# 29 "lexer.mll"
                            (LTQ)
# 286 "lexer.ml"

  | 21 ->
# 30 "lexer.mll"
                            (GT)
# 291 "lexer.ml"

  | 22 ->
# 31 "lexer.mll"
                            (GTQ)
# 296 "lexer.ml"

  | 23 ->
# 32 "lexer.mll"
                            (BITAND)
# 301 "lexer.ml"

  | 24 ->
# 33 "lexer.mll"
                            (BITOR)
# 306 "lexer.ml"

  | 25 ->
# 34 "lexer.mll"
                            (AND)
# 311 "lexer.ml"

  | 26 ->
# 35 "lexer.mll"
                            (OR)
# 316 "lexer.ml"

  | 27 ->
# 36 "lexer.mll"
                            (NOT)
# 321 "lexer.ml"

  | 28 ->
# 37 "lexer.mll"
                            (ARROW)
# 326 "lexer.ml"

  | 29 ->
# 38 "lexer.mll"
                            (IF)
# 331 "lexer.ml"

  | 30 ->
# 39 "lexer.mll"
                            (ELSE)
# 336 "lexer.ml"

  | 31 ->
# 40 "lexer.mll"
                            (WHILE)
# 341 "lexer.ml"

  | 32 ->
# 41 "lexer.mll"
                            (FOR)
# 346 "lexer.ml"

  | 33 ->
# 42 "lexer.mll"
                            (INT)
# 351 "lexer.ml"

  | 34 ->
# 43 "lexer.mll"
                            (DOUBLE)
# 356 "lexer.ml"

  | 35 ->
# 44 "lexer.mll"
                            (STRING)
# 361 "lexer.ml"

  | 36 ->
# 45 "lexer.mll"
                            (BOOLEAN)
# 366 "lexer.ml"

  | 37 ->
# 46 "lexer.mll"
                            (printf "element"; ELEMENT )
# 371 "lexer.ml"

  | 38 ->
# 47 "lexer.mll"
                            (MOLECULE)
# 376 "lexer.ml"

  | 39 ->
# 48 "lexer.mll"
                            (EQUATION)
# 381 "lexer.ml"

  | 40 ->
# 49 "lexer.mll"
                            (BALANCE)
# 386 "lexer.ml"

  | 41 ->
# 50 "lexer.mll"
                            (MOLAR_MASS)
# 391 "lexer.ml"

  | 42 ->
# 51 "lexer.mll"
                            (MOL_CHARGE)
# 396 "lexer.ml"

  | 43 ->
# 52 "lexer.mll"
                            (MOL_ELECTRON)
# 401 "lexer.ml"

  | 44 ->
# 56 "lexer.mll"
                            (FUNCTION)
# 406 "lexer.ml"

  | 45 ->
# 57 "lexer.mll"
                            (OBJECT)
# 411 "lexer.ml"

  | 46 ->
# 58 "lexer.mll"
                            (RETURN)
# 416 "lexer.ml"

  | 47 ->
# 59 "lexer.mll"
                            (PRINT)
# 421 "lexer.ml"

  | 48 ->
# 60 "lexer.mll"
                            (CALL)
# 426 "lexer.ml"

  | 49 ->
# 61 "lexer.mll"
                            (DRAW)
# 431 "lexer.ml"

  | 50 ->
# 62 "lexer.mll"
                       (TRUE)
# 436 "lexer.ml"

  | 51 ->
# 63 "lexer.mll"
                     (FALSE)
# 441 "lexer.ml"

  | 52 ->
# 69 "lexer.mll"
                               (exit 0)
# 446 "lexer.ml"

  | 53 ->
# 70 "lexer.mll"
        (NOTHING)
# 451 "lexer.ml"

  | __ocaml_lex_state -> lexbuf.Lexing.refill_buff lexbuf;
      __ocaml_lex_tokens_rec lexbuf __ocaml_lex_state

;;

# 94 "lexer.mll"
 
let main () =
let lexbuf = Lexing.from_channel stdin in
while true do
tokens lexbuf
done
   

let _ = Printexc.print main ()

# 469 "lexer.ml"