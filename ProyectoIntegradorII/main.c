#include <stdio.h>
#include <stdlib.h>
#include "Tokens.h"

#ifdef EOF
#undef EOF
#endif

#define EOF 0

int yyparse(void);
extern char* yytext;
int tokenCount;

int main(int argc, char* argv[])
{
    int parsedCode = yyparse();

    if(!parsedCode)
    printf("Es parte\n");
    else
    printf("No es parte\n");
}
