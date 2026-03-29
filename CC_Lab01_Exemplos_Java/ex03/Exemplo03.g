lexer grammar Exemplo03;

IF   : 'if' ;
ELSE : 'else' ;
TRUE : 'true' ;

ASSIGN : '=' ;
STRING : '"' ~["]* '"' ;
ID     : [a-zA-Z]+ ;

CHAR : [a-zA-Z] ;
DIGITO : [0-9] ;

PLACA : CHAR CHAR CHAR '-' DIGITO DIGITO DIGITO DIGITO ;

WS : [ \t]+ ;

NEWLINE : ('\r'? '\n' | '\r') ;

COMMENT : '#' ~[\r\n]* -> skip ;