%{
/*****************************************************************
 * 'main.y'
 * main.y file for Lexical Analysis
 *
 * Author/CopyRight: Mancuso, Logan
 * Last Edit Date: 03-15-2018--15:54:36
 * THIS IS A TEST FILE CHANGES WILL NOT BE SAVED
**/

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