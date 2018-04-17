%{
/*****************************************************************
 * 'main.y'
 * main.y file for Lexical Analysis
 *
 * Author/CopyRight: Mancuso, Logan
 * Last Edit Date: 03-09-2018--07:57:20
 * THIS IS A TEST FILE CHANGES WILL NOT BE SAVED
**/

#include <stdlib.h> 

yydebug=1;

%}

%token DIGIT TIMES PLUS LPAREN RPAREN

%%
line	:   expr '\n'			{printf("recognized an expr\n");
					 exit(0);
					}
	;
expr	:	expr PLUS term	
	|	term
	;
term	:	term TIMES factor	
	|	factor
	;
factor	:	LPAREN  expr  RPAREN	
	|	DIGIT
	;
%%

/****************************************************************
 * End 'main.l'
**/