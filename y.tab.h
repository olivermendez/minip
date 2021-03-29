/* A Bison parser, made by GNU Bison 3.5.1.  */

/* Bison interface for Yacc-like parsers in C

   Copyright (C) 1984, 1989-1990, 2000-2015, 2018-2020 Free Software Foundation,
   Inc.

   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <http://www.gnu.org/licenses/>.  */

/* As a special exception, you may create a larger work that contains
   part or all of the Bison parser skeleton and distribute that work
   under terms of your choice, so long as that work isn't itself a
   parser generator using the skeleton or a modified version thereof
   as a parser skeleton.  Alternatively, if you modify or redistribute
   the parser skeleton itself, you may (at your option) remove this
   special exception, which will cause the skeleton and the resulting
   Bison output files to be licensed under the GNU General Public
   License without this special exception.

   This special exception was added by the Free Software Foundation in
   version 2.2 of Bison.  */

/* Undocumented macros, especially those whose name start with YY_,
   are private implementation details.  Do not rely on them.  */

#ifndef YY_YY_Y_TAB_H_INCLUDED
# define YY_YY_Y_TAB_H_INCLUDED
/* Debug traces.  */
#ifndef YYDEBUG
# define YYDEBUG 0
#endif
#if YYDEBUG
extern int yydebug;
#endif

/* Token type.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
  enum yytokentype
  {
    _LBRACK = 1,
    _RBRACK = 2,
    _LPAREN = 3,
    _RPAREN = 4,
    _SEMI = 5,
    _COLON = 6,
    _COMMA = 7,
    _ASSIGN = 8,
    _PLUS = 9,
    _MINUS = 10,
    _MULT = 11,
    _DIVIDE = 12,
    _EQL = 13,
    _LESS = 14,
    _GTR = 15,
    _LEQ = 16,
    _GEQ = 17,
    _NEQ = 18,
    _BEGIN = 30,
    _PROGRAM = 19,
    _ENDVARS = 20,
    _ENDPROCS = 21,
    _VARS = 22,
    _NOVARS = 23,
    _INTEGER = 24,
    _REAL = 25,
    _STRING = 26,
    _PROCS = 27,
    _NOPROCS = 28,
    _PROC = 29,
    _END = 31,
    _FOR = 32,
    _TO = 33,
    _DO = 34,
    _IF = 35,
    _THEN = 36,
    _ELSE = 37,
    _READ = 38,
    _WRITE = 39,
    _ID = 40,
    _ECONST = 41,
    _ICONST = 42,
    _RCONST = 43,
    _LITERAL = 44,
    _COMEN = 45
  };
#endif
/* Tokens.  */
#define _LBRACK 1
#define _RBRACK 2
#define _LPAREN 3
#define _RPAREN 4
#define _SEMI 5
#define _COLON 6
#define _COMMA 7
#define _ASSIGN 8
#define _PLUS 9
#define _MINUS 10
#define _MULT 11
#define _DIVIDE 12
#define _EQL 13
#define _LESS 14
#define _GTR 15
#define _LEQ 16
#define _GEQ 17
#define _NEQ 18
#define _BEGIN 30
#define _PROGRAM 19
#define _ENDVARS 20
#define _ENDPROCS 21
#define _VARS 22
#define _NOVARS 23
#define _INTEGER 24
#define _REAL 25
#define _STRING 26
#define _PROCS 27
#define _NOPROCS 28
#define _PROC 29
#define _END 31
#define _FOR 32
#define _TO 33
#define _DO 34
#define _IF 35
#define _THEN 36
#define _ELSE 37
#define _READ 38
#define _WRITE 39
#define _ID 40
#define _ECONST 41
#define _ICONST 42
#define _RCONST 43
#define _LITERAL 44
#define _COMEN 45

/* Value type.  */
#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
typedef int YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define YYSTYPE_IS_DECLARED 1
#endif


extern YYSTYPE yylval;

int yyparse (void);

#endif /* !YY_YY_Y_TAB_H_INCLUDED  */
