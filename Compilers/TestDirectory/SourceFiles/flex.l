%{
/*****************************************************************
 * 'main.l'
 * main.l file for Lexical Analysis
 *
 * Author/CopyRight: Mancuso, Logan
 * Last Edit Date: 03-09-2018--07:57:20
 * THIS IS A TEST FILE CHANGES WILL NOT BE SAVED
**/

  #include "main.tab.h"
%}

/**DECLARATIONS**/
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