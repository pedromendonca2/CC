lexer grammar Exemple01;

// WS : [ \t\n]+ -> skip ;
// HELLO : ('hello' | 'HELLO') ;
// WORLD : 'World' ;
// COMMA : ',' ;
// EXCLAM : '!' ;

fragment DIGITO : [0-9];
DEZENA : DIGITO DIGITO;
CENTENA : DIGITO DIGITO DIGITO;