%{
#include "sl1.tab.h"
%}
%%
int return INT;
float return FLOAT;
[a-z][a-z0-9]* return ID;
0|[1-9][0-9]* return NUM;
([0-9]+"."[0-9]*)|([0-9]*"."[0-9]+)  return REAL;
","  return COMMA;
"="  return EQ;
"!"  return EX;
"?"  return QU;
";"  return SEMI;
"+"  return ADD;
"-"  return SUB;
"*"  return MUL;
"/"  return DIV;
"("  return LPAR;
")"  return RPAR;
"\n"|" "|"\t" ;
"/*"[a-z0-9 ]*"*/" ;
. return ERROR;
%%

int yywrap(void) {
    return 1;
}

