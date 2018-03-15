%{
/*****************************************************************
 * 'main.l'
 * main.l file for Lexical Analysis
 *
 * Author/CopyRight: Mancuso, Logan
 * Last Edit Date: 03-15-2018--15:54:36
**/

#include "main.tab.h"
%}


digit [0-9]+

%%
\n	return('\n');
\+	return(PLUS);
\*	return(TIMES);
\(	return(LPAREN);
\)	return(RPAREN);
{digit}    return(DIGIT);
%%

yywrap() {

}/*end yywrap*/


/****************************************************************
 * End 'main.l'
**/