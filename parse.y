%{
	#include <stdio.h>
	#include "y.tab.h"
	
	int yylex();
	int yyerror(char *s);

%}


%token  _LBRACK 1
%token  _RBRACK 2
%token  _LPAREN 3
%token  _RPAREN 4
%token  _SEMI 5
%token  _COLON 6
%token  _COMMA 7
%token  _ASSIGN 8
%token  _PLUS 9
%token  _MINUS 10
%token  _MULT 11
%token  _DIVIDE 12
%token  _EQL 13
%token  _LESS 14
%token  _GTR 15
%token  _LEQ 16
%token  _GEQ 17
%token  _NEQ 18
%token _BEGIN 30
%token _PROGRAM 19
%token _ENDVARS 20
%token _ENDPROCS 21
%token _VARS 22
%token _NOVARS 23
%token _INTEGER 24
%token _REAL 25
%token _STRING 26
%token _PROCS 27
%token _NOPROCS 28
%token _PROC 29
%token _END 31
%token _FOR 32
%token _TO 33
%token _DO 34
%token _IF 35
%token _THEN 36
%token _ELSE 37
%token _READ 38
%token _WRITE 39
%token _ID 40
%token _ECONST 41
%token _ICONST 42
%token _RCONST 43
%token _LITERAL 44
%token _COMEN 45

%start program

%%

    program:
    	title _SEMI block	{printf("Rule in program: _SEMI \n");}
    ;

    title:
    	_PROGRAM _ID 	{printf("Rule in title: _PROGRAM _ID \n");}
    ;

    block:
    	vars _ENDVARS procs _ENDPROCS code 	{printf("Rule in block: _PROGRAM _ID \n");}
    ;

    vars:
    	_VARS varlist _SEMI 	{printf("Rule in vars: _VARS varlist _SEMI \n");}
    	| _NOVARS	{printf("Rule in vars: _NOVARS");}
    ;

    varlist:
    	varlist _SEMI vardef 	{printf("Rule in varlist: varlist _SEMI vardef \n");}
		| vardef	{printf("Rule in varlist: vardef \n");}
    ;


    vardef:
    	_ID _COLON _INTEGER 	{printf("Rule in vardef: _ID _COLON _INTEGER \n");}	
    	| _ID _COLON _REAL 		{printf("Rule in vardef: _ID _COLON _REAL \n");}
    	| _ID _COLON _INTEGER bnl	{printf("Rule in vardef: _ID _COLON _INTEGER bnl \n");}
		| _ID _COLON _STRING	{printf("Rule in vardef: _ID _COLON _STRING \n");}
	;

	bnl:
		_LBRACK nlist _RBRACK	{printf("Rule in bnl: _LBRACK nlist _RBRACK \n");}
	;

	nlist:
		nlist _COMMA _ICONST 	{printf("Rule in nlist: nlist _COMMA _ICONST \n");}
		| _ICONST		{printf("Rule in nlist: _ICONST \n");}
	;

	procs:
		_PROCS proclist 	{printf("Rule in procs: _PROCS proclist \n ");}
		| _NOPROCS			{printf("Rule in procs: _NOPROCS \n");}
	;

	proclist:
		proclist _SEMI procdef 		{printf("Rule in proclist: proclist _SEMI procdef \n");}
		| procdef		{printf("Rule in proclist: procdef \n");}
	;

	procdef:
		ptitle _SEMI block 	{printf("Rule in procdef: ptitle _SEMI block \n");}
	;

	ptitle:
		_PROC _ID _LPAREN varlist _RPAREN 	{printf("Rule in ptitle: _PROC _ID _LPAREN varlist _RPAREN \n");}
		| _PROC _ID _LPAREN _RPAREN			{printf("Rule in ptitle: _PROC _ID _LPAREN _RPAREN \n");}
	;

	code:
		_BEGIN para _END {printf("Rule in code: _BEGIN para _END \n");}
		| _SEMI			{printf("Rule in code:  _SEMI \n");}
	;

	para:
		para _SEMI stmt 	{printf("Rule in para: para _SEMI stmt \n");}
		| stmt				{printf("Rule in para: stmt \n");}
	;

	stmt:
		assign		{printf("Rule in stmt: assign \n");}
		| cond 		{printf("Rule in stmt: cond \n");}
		| loop		{printf("Rule in stmt: loop \n");}
		| input 	{printf("Rule in stmt: input \n");}
		| output 	{printf("Rule in stmt: output \n");}
		| code		{printf("Rule in stmt: code \n");}
	;

	assign:
		 ids _ASSIGN expr	{printf("Rule in assign: ids _ASSIGN expr \n");}
	;

	expr:
		expr _PLUS term 	{printf("Rule in expr: expr _PLUS term \n");}
		| expr _MINUS term	{printf("Rule in expr: expr _MINUS term \n");}
		| term 	{printf("Rule in expr: term \n");}
	;

	ids:
		_ID {printf("Rule in ids: _ID \n");}
		| _ID _LBRACK vallist _RBRACK	{printf("Rule in ids: _ID _LBRACK vallist _RBRACK \n");}
	;

	term:
		term _MULT fac 		{printf("Rule in term: term _MULT fac  \n");}
		| term _DIVIDE fac 	{printf("Rule in term: term _DIVIDE fac \n");}
		| fac 	{printf("Rule in term: fac \n");}
	;

	vallist:
		vallist _COMMA it 	{printf("Rule in vallist: vallist _COMMA it  \n");}
		| it 	{printf("Rule in vallist: it \n");}
	;

	fac:
		val 	{printf("Rule in fac: val \n");}
		| _LPAREN expr _RPAREN 		{printf("Rule in fac: _LPAREN expr _RPAREN \n");}
	;

	val:
		ids 	{printf("Rule in val: ids \n");}
		| _ID _LPAREN vallist _RPAREN 	{printf("Rule in val: _ID _LPAREN vallist _RPAREN\n");}
		| _ICONST 	{printf("Rule in val: _ICONST \n");}	
		| _RCONST	{printf("Rule in val: _RCONST \n");}
	;


	it:
		_ID {printf("Rule in it: _ID \n");}
		| _ICONST	{printf("Rule in it: _ICONST \n");}
	;

	cond: 
		_IF expr bop expr _THEN stmt _ELSE stmt 	{printf("Rule in cond: _IF expr bop expr _THEN stmt _ELSE stmt \n");}
	;

	bop:
		_EQL {printf("Rule in bop: _EQL \n");}
		| _LESS {printf("Rule in bop: _LESS \n");}
		| _GTR 	{printf("Rule in bop: _GTR \n");}
		| _LEQ 	{printf("Rule in bop: _LEQ \n");}
		| _GEQ	{printf("Rule in bop: _GEQ \n");}
		| _NEQ	{printf("Rule in bop: _NEQ \n");}
	;
		
	loop: 	
		_FOR assign _TO expr _DO stmt	{printf("Rule in loop: _FOR assign _TO expr _DO stmt \n");}
	;
	
	input:
		_READ _LPAREN _ID _RPAREN	{printf("Rule in input: _READ _LPAREN _ID _RPAREN \n");}
	;

	output:
		_WRITE _LPAREN _ID _RPAREN 		{printf("Rule in output: _WRITE _LPAREN _ID _RPAREN \n");}
		| _WRITE _LPAREN _LITERAL _RPAREN	{printf("Rule in output: _WRITE _LPAREN _LITERAL _RPAREN \n");}
	;


%%

int yyerror(char *s)
{
	printf ("%s\n", s);
	return 0;
}
