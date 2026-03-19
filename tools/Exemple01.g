lexer grammar Exemple01;

WS : [ \t\n]+ -> skip ;
HELLO : ('hello' | 'HELLO') ;
WORLD : 'World' ;
COMMA : ',' ;
EXCLAM : '!' ;
