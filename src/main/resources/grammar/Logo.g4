grammar Logo ; 

@header {package fr.utc.parsing;}

FLOAT : [0-9][0-9]*('.'[0-9]+)? ;
WS : [ \t\r\n]+ -> skip ;
COMMENT1 : '//' .*? [\r\n]+ -> skip;
COMMENT2 : '/*' .*? '*/' -> skip;

programme :
 liste_instructions  
;

liste_instructions :   
 (instruction)+    
;

instruction :
   'av' expr # av
 | 'td' expr # td
 | 'tg' expr # tg
; 

expr :
   FLOAT         # float
 | '(' expr ')'  # parenthese 
;

