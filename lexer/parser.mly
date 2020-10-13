%{
	open Printf
	open Ast
	let parse_error s = print_endline s;
	flush stdout
%}
%token SEMICOLON COLON LPAREN RPAREN LBRACE RBRACE LBRACKET RBRACKET COMMA ARROW ATTRIBUTE NOTHING
%token PLUS MINUS MUL DIV MOD CONCATENATE 
%token ASSIGN EQ NEQ LT LTQ GT GTQ APOS
%token IF ELSE FOR WHILE RETURN PRINT
%token INT DOUBLE STRING BOOLEAN ELEMENT MOLECULE EQUATION FUNCTION BALANCE
%token CALL ACCESS DRAW NEWLINE
%token MASS CHARGE ELECTRONS MOLAR_MASS MOL_CHARGE MOL_ELECTRON
%token BITAND BITOR AND OR NOT TRUE FALSE
%token INT BOOLEAN STRING DOUBLE OBJECT
%token <string> DATATYPE ATTRIBUTE
%token <bool> BOOLEAN_LITERAL
%token <string> ELEMENT_LITERAL
%token <string> MOLECULE_LITERAL
%token <string> STRING_LITERAL
%token <string> ID
%token <int> INTEGER_LITERAL
%token <float> DOUBLE_LITERAL
%token EOF
%start salt
%type <Ast.program> salt
%%
salt:
		{[]}
	|salt fdecl   {($2 :: $1)}

datatypes:
	INT { IntType }
	| BOOLEAN { BooleanType }
	| STRING { StringType }
	| DOUBLE { DoubleType }

variables:
	 ID { $1 }
	| STRING_LITERAL	 	{ $1 }
	| ELEMENT_LITERAL 	{ $1}
	| MOLECULE_LITERAL 	{ $1 }
element : 
ELEMENT_LITERAL		 { Element ( $1 ) } 
molecule : 
MOLECULE_LITERAL { Molecule ( $1 ) }


argument_opt: //formal_opt
					{ [] }
	| argument_list { List.rev $1 }

argument_list:
	parameter_declarations { [$1 ]}
	| argument_list COMMA parameter_declarations { $3 :: $1 }

parameter_declarations:
	datatypes variables
	{ { name = $2 ;
 		paramtype = $1 
	} }

 simple_statement: //vdecl
	datatypes variables SEMICOLON 
	{ {name = $2 ; 
	vtype = $1 ;
	 } }

simple_statement_list: 
			{ [] }
	|simple_statement_list  simple_statement { List.rev( $2 :: $1)}


e_declaration : 
ELEMENT ELEMENT_LITERAL LPAREN INTEGER_LITERAL COMMA INTEGER_LITERAL COMMA INTEGER_LITERAL RPAREN SEMICOLON 
	{{ name = $2 ;
	   mass = $4 ; 
	   electrons = $6 ; 
	   charge = $8;
	 }}

e_declaration_list:
				{ [] }
	| e_declaration_list e_declaration { List.rev($2 ::$1) }

element_list : 
		element_list COMMA element		{ ($3 :: $1) }
		| element   { [$1] }

molecule_list : 
		molecule_list COMMA molecule	{ ($3 :: $1) }
		| molecule   { [$1] }


m_declaration : 
MOLECULE MOLECULE_LITERAL LPAREN element_list RPAREN SEMICOLON
	{{ name = $2 ; 
	 elements = $4; 
	}}

m_declaration_list:
		{ [] }
	| m_declaration_list m_declaration { List.rev ($2 ::$1) }
statement:
	expr SEMICOLON		{Expr($1)}
	| RETURN expr SEMICOLON   {Return($2)}
	|PRINT expr SEMICOLON        {Print($2)}
	|LBRACE statement_list RBRACE {Block(List.rev $2)}
	//|IF LPAREN expr RPAREN statement %prec NOELSE {If($3,$5,Block([]))}
	|IF LPAREN expr RPAREN statement ELSE statement  {If($3,$5,$7)}
	|FOR LPAREN expr SEMICOLON expr SEMICOLON expr RPAREN statement  {For($3,$5,$7,$9)}
	|WHILE LPAREN expr RPAREN statement {While($3,$5)}

statement_list:
	{ [] }
	| statement_list statement { $2 :: $1 }
expr :
	INTEGER_LITERAL { Int($1) }
 	| variables { String($1) }
	| EQUATION variables LBRACKET element_list ARROW element_list RBRACKET 
{Equation ($2, $4, $6) }
| expr ACCESS ATTRIBUTE { Access($1, $3) }
| expr PLUS expr    { Binop($1, Add, $3) }   
| expr MINUS expr    { Binop($1, Sub, $3) } 
| expr MUL expr    { Binop($1, Mul, $3) } 
| expr DIV expr    { Binop($1, Div, $3) }  	
| expr MOD expr    { Binop($1, Mod, $3) } 	
| expr EQ expr    { Boolean($1, Eq, $3) } 
| expr NEQ expr    { Boolean($1, Neq, $3) } 
| expr LT expr    { Boolean($1, Lt, $3) } 
| expr GT expr    { Boolean($1, Gt, $3) } 
| expr LTQ expr    { Boolean($1, Ltq, $3) } 
| expr GTQ expr    { Boolean($1, Gtq, $3) } 
| expr AND expr    { Brela($1, And, $3) } 
| expr OR expr    { Brela($1, Or, $3) } 
| expr CONCATENATE expr    { Concat($1, $3) } 
| variables ASSIGN expr {Asn($1,$3)}
|LPAREN expr RPAREN      {Bracket($2)}
|CHARGE LPAREN variables RPAREN {Charge($3)}
|MASS LPAREN variables RPAREN    {Mass($3)}
|ELECTRONS LPAREN variables RPAREN  {Electrons($3)}


fdecl:
FUNCTION ID LPAREN argument_opt RPAREN LBRACE simple_statement_list e_declaration_list m_declaration_list statement_list RBRACE
{{
		printf "heya";
		name = $2;
		arguments = $4; 
		locals = List.rev $7;
		elements =  List.rev $8;
		molecules = List.rev $9;
		body = List.rev $10
}}