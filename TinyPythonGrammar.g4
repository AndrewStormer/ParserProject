grammar TinyPythonGrammar;

start: ((assign | arith | if)(NEWLINE)*)*EOF;

assign: VAR ASSIGN_OP (INT | FLOAT | BOOLEAN | STRING | array | VAR | arith);

arith: operand ARITH_OP operand ( ARITH_OP operand)*;

if: 'if ' conditional ':' NEWLINE body+ elif* else?;

elif: 'elif ' conditional ':' NEWLINE body+ NEWLINE;

else: 'else:' NEWLINE body+;

body: '\t'(assign | arith | if)(NEWLINE)*;

operand: BOOLEAN | VAR | INT | FLOAT;

ARITH_OP: '+' | '-' | '*' | '/' | '%';

ASSIGN_OP: '=' | '+=' | '-=' | '*=' | '/=';

COMPARE_OP: '>' | '<' | '>=' | '<=' | '==' | '!=';

array: '[' (((INT ',')* INT|(STRING ',')* STRING|(FLOAT ',')* FLOAT)) ']';

conditional: condition (('and'|'or') condition)*;

condition: (operand COMPARE_OP operand | BOOLEAN | '(not' (BOOLEAN|operand) ')');

VAR: [a-zA-Z][a-zA-Z0-9]*('_'*[a-zA-Z0-9])*;

INT: '-'?[0-9]+;

FLOAT: '-'?[0-9]+('.'[0-9]+)?;

BOOLEAN: 'True' | 'False';

STRING: '\'' .*? '\'' |  '"' .*? '"';

NEWLINE: '\r' | '\n' | '\r\n';


WS: [ ]+ -> skip;