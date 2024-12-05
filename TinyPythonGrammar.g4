grammar TinyPythonGrammar;

start: (expr)*EOF;

expr: (if_else | if | assign | arith) NEWLINE*;

assign: VAR ASSIGN_OP (INT | FLOAT | BOOLEAN | STRING | array | VAR | arith);

arith: operand ARITH_OP operand ( ARITH_OP operand)*;

ARITH_OP: '+' | '-' | '*' | '/' | '%';

ASSIGN_OP: '=' | '+=' | '-=' | '*=' | '/=';


if: 'if ' conditional ':' NEWLINE body+;

if_else: if elif else?;

elif: 'elif ' conditional ':' NEWLINE body+ NEWLINE;

else: 'else:' NEWLINE body+;

body: (INDENT+ expr NEWLINE*)+;

conditional: condition (('and'|'or') condition)*;

condition: (operand COMPARE_OP operand | BOOLEAN | '(not' (BOOLEAN|operand) ')');

COMPARE_OP: '>' | '<' | '>=' | '<=' | '==' | '!=';


operand: BOOLEAN | VAR | INT | FLOAT;

array: '[' (((INT ',')* INT|(STRING ',')* STRING|(FLOAT ',')* FLOAT)) ']';

VAR: [a-zA-Z][a-zA-Z0-9]*('_'*[a-zA-Z0-9])*;

INT: '-'?[0-9]+;

FLOAT: '-'?[0-9]+('.'[0-9]+)?;

BOOLEAN: 'True' | 'False';

STRING: '\'' .*? '\'' |  '"' .*? '"';


NEWLINE: '\r' | '\n' | '\r\n';

INDENT: '\t' | ('    ');

WS: [ ]+ -> skip;