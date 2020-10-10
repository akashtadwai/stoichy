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
%start datatype
%type <unit> datatype 
%%
datatype:
	|  {}
	| MASS {}
	| ELEMENT   {}
	|  INT 		{ }
	| BOOLEAN 	{  }
	| STRING 	{  }
	| DOUBLE 	{  }
%%