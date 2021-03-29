#ifndef TOKENS_H_INCLUDED
#define TOKENS_H_INCLUDED

/***
 * Header file that contains all token code constants
 * used by flex output source code
 *
 * @Author Aye
 *
 * */

#include <stdio.h>

#define  _LBRACK 1
#define  _RBRACK 2
#define  _LPAREN 3
#define  _RPAREN 4
#define  _SEMI 5
#define  _COLON 6
#define  _COMMA 7
#define  _ASSIGN 8
#define  _PLUS 9
#define  _MINUS 10
#define  _MULT 11
#define  _DIVIDE 12
#define  _EQL 13
#define  _LESS 14
#define  _GTR 15
#define  _LEQ 16
#define  _GEQ 17
#define  _NEQ 18
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

#endif // TOKENS_H_INCLUDED
