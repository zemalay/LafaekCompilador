%%

%{

private void imprimir(String descricao, String lexema) {
    System.out.println(lexema + " - " + descricao);
}

%}


%class LafaekAnalyzer
%type void


BRANCO = [\n| |\t|\r]
ID = [_|a-z|A-Z][a-z|A-Z|0-9|_]*
INTEIRO = 0|[1-9][0-9]*
OPERADOR_ARITMETICO = ( "+" | "-" | "*" | "/" | "%" )
OPERADOR_LOGICO = ("&&" | "||" )
SEPARADORES = ("(" | ")" | "{" | "}" | "[" | "]" | ";" | "." )
RELACIONAL = (">" | "<" | "==" | "!=" | ">=" | "<=" )
COMENTARIO = ( "//" | "/*" | "*/")


%%

"benar"						 { imprimir("Boolean", yytext()); }
"salah"						 { imprimir("Boolean", yytext()); }
"jika"                 		 { imprimir("Reservada", yytext()); }
"selama"        	         { imprimir("Reservada", yytext()); }
"tidak"                		 { imprimir("Reservada", yytext()); }
"bb"                  		 { imprimir("Reservada", yytext()); }
"pec"                  		 { imprimir("Reservada", yytext()); }
"kal"                  		 { imprimir("Reservada", yytext()); }

{BRANCO}                     { imprimir("Espaço em branco", yytext()); }
{ID}		                 { imprimir("Identificador", yytext()); }
{INTEIRO}                    { imprimir("Número Inteiro", yytext()); }
{OPERADOR_ARITMETICO}        { imprimir("Operador aritmetica", yytext()); }
{OPERADOR_LOGICO}			 { imprimir("Operador logico", yytext()); }
{SEPARADORES}				 { imprimir("Separadores", yytext()); }
{RELACIONAL}				 { imprimir("Relacional", yytext()); }
{COMENTARIO}				 { imprimir("Comentario", yytext()); }


. { throw new RuntimeException("Caractere inválido " + yytext()); }