#include "y.tab.h"
#include <stdlib.h>
#include "Tokens.h"

#ifdef E0F
#undef E0F
#endif
#ifdef YYDEBUG
    int yydebug =1;
#endif

int tokenCount;
extern char* yytext;
int yyparse(void);

int main(int argc, char* argv[])
{
    
    int codeparse = yyparse();
    if(codeparse==0)
    printf("CUMPLE\n");
    else
    printf("NO CUMPLE\n");
}
