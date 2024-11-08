grammar TinyPythonGrammar;

start: ((assign | arith)('\n')*)*EOF;

assign: VAR ASSIGN_OP (INT | FLOAT | BOOLEAN | STRING | array | VAR | arith);

arith: operand ARITH_OP operand (ARITH_OP operand)*;

operand: VAR | INT| BOOLEAN | FLOAT;

ARITH_OP: '+' | '-' | '*' | '/' | '%';

ASSIGN_OP: '=' | '+=' | '-=' | '*=' | '/=';


array: '[' (((INT ',')+|(STRING ',')+|(FLOAT ',')+)) (INT|STRING|FLOAT) ']';


VAR: [a-zA-Z][a-zA-Z0-9]*('_'*[a-zA-Z0-9])*;

INT: [0-9]+;

FLOAT: [0-9]+('.'[0-9]+)?;

BOOLEAN: 'True' | 'False';

STRING: '\'' .+? '\'' |  '"' .+? '"';


WS: [ \t\r]+ -> skip;