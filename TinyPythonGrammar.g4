grammar TinyPythonGrammar;

start: (expr NEWLINE? | INDENT? NEWLINE+)* EOF;

expr: assign | arith | if_else | for | while;

assign: VAR ASSIGN_OP (INT | FLOAT | BOOLEAN | STRING | array | VAR | arith);

arith: operand ARITH_OP operand ( ARITH_OP operand)*;

ARITH_OP: '+' | '-' | '*' | '/' | '%';

ASSIGN_OP: '=' | '+=' | '-=' | '*=' | '/=';


if_else: if elif* else?;

if: 'if' (BOOLEAN | conditional) ':' body+ NEWLINE?; //NEWLINE works as DEDENT

elif: INDENT? 'elif' conditional ':' body+ NEWLINE?;

else: INDENT? 'else:' body+ NEWLINE?;

for: 'for' VAR 'in' (range | array | VAR) ':' body+ NEWLINE?;

while: 'while' '('? conditional ')'? ':' body+ NEWLINE?;

body: (NEWLINE* INDENT expr);

conditional: condition (('and'|'or') condition)*;

condition: (operand (COMPARE_OP operand)* | '(not' (BOOLEAN|operand) ')');

COMPARE_OP: '>' | '<' | '>=' | '<=' | '==' | '!=';


operand: BOOLEAN | VAR | INT | FLOAT;

array: '[' (((INT ',')* INT|(STRING ',')* STRING|(FLOAT ',')* FLOAT)) ']';

range: 'range(' (INT ',')? INT ')';

VAR: [a-zA-Z][a-zA-Z0-9]*('_'*[a-zA-Z0-9])*;

INT: '-'?[0-9]+;

FLOAT: '-'?[0-9]+('.'[0-9]+)?;

BOOLEAN: 'True' | 'False';

STRING: '\'' .*? '\'' |  '"' .*? '"';


INDENT: '\t'+;

NEWLINE: '\r'? '\n';



WS: [ \r]+ -> skip;

COMMENT: '#' ~[\r\n]* -> skip;

MULTILINE_COMMENT: ('\'\'\'' .*? '\'\'\'')+ -> skip;
