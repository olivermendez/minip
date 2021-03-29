
%{
#include "Tokens.h"
#include <stdio.h>

void errorLex();
int tokenCount;

%}

%%
"["							{tokenCount++; return (_LBRACK);}
"]"							{tokenCount++; return (_RBRACK);}
"("							{tokenCount++; return (_LPAREN);}
")"							{tokenCount++; return (_RPAREN);}
";"							{tokenCount++; return (_SEMI);}
":"							{tokenCount++; return (_COLON);}
","							{tokenCount++; return (_COMMA);}
":="							{tokenCount++; return (_ASSIGN);}
"+"							{tokenCount++; return (_PLUS);}
"-"							{tokenCount++; return (_MINUS);}
"*"							{tokenCount++; return (_MULT);}
"/"							{tokenCount++; return (_DIVIDE);}
"="							{tokenCount++; return (_EQL);}
"<"							{tokenCount++; return (_LESS);}
">"							{tokenCount++; return (_GTR);}
"<="							{tokenCount++; return (_LEQ);}
">="							{tokenCount++; return (_GEQ);}
"<>"							{tokenCount++; return (_NEQ);}
[Bb][Ee][Gg][Ii][Nn]					{tokenCount++; return (_BEGIN);}
[Pp][Rr][Oo][Gg][Rr][Aa][Mm]				{tokenCount++; return (_PROGRAM);}
[Ee][Nn][Dd][Vv][Aa][Rr][Ss]				{tokenCount++; return (_ENDVARS);}
[Ee][Nn][Dd][Pp][Rr][Oo][Cc][Ss]			{tokenCount++; return (_ENDPROCS);}
[Vv][Aa][Rr][Ii][Aa][Bb][Ll][Ee][Ss]			{tokenCount++; return (_VARS);}
[Nn][Oo][Vv][Aa][Rr][Ii][Aa][Bb][Ll][Ee][Ss]		{tokenCount++; return (_NOVARS);}
[Ii][Nn][Tt][Ee][Gg][Ee][Rr]				{tokenCount++; return (_INTEGER);}
[Rr][Ee][Aa][Ll]					{tokenCount++; return (_REAL);}
[Ss][Tt][Rr][Ii][Nn][Gg]				{tokenCount++; return (_STRING);}
[Pp][Rr][Oo][Cc][Ee][Dd][Uu][Rr][Ee][Ss]		{tokenCount++; return (_PROCS);}
[Nn][Oo][Pp][Rr][Oo][Cc][Ee][Dd][Uu][Rr][Ee][Ss]	{tokenCount++; return (_NOPROCS);}
[Pp][Rr][Oo][Cc][Ee][Dd][Uu][Rr][Ee]			{tokenCount++; return (_PROC);}
[Ee][Nn][Dd]						{tokenCount++; return (_END);}
[Ff][Oo][Rr]						{tokenCount++; return (_FOR);}
[Tt][Oo]						{tokenCount++; return (_TO);}
[Dd][Oo]						{tokenCount++; return (_DO);}
[Ii][Ff]						{tokenCount++; return (_IF);}
[Tt][Hh][Ee][Nn]					{tokenCount++; return (_THEN);}
[Ee][Ll][Ss][Ee]					{tokenCount++; return (_ELSE);}
[Rr][Ee][Aa][Dd]					{tokenCount++; return (_READ);}
[Ww][Rr][Ii][Tt][Ee]  					{tokenCount++; return (_WRITE);}
[a-zA-Z_][a-zA-Z0-9_]*							{tokenCount++; return (_ID);}
([+-]?[0-9]*\.[0-9]+[eE][\+-]?[0-9]+)|([+-]?[0-9]+[eE][\+-]?[0-9]+)	{tokenCount++; return (_ECONST);}
[\+-]?[0-9]+						{tokenCount++; return (_ICONST);}
[\+-]?[0-9]*\.[0-9]+ 				{tokenCount++; return (_RCONST);}
["][^"]*["] 					{tokenCount++; return (_LITERAL);}
\{*\}							{tokenCount++; return (_COMEN);}
[{}](.)*[}]
\n 					
\t	
\r
\r\n
.
%%

void errorLex(){
    printf("Lexical Error:%s\n",yytext);
}

int yywrap (void){
    return 1;
}