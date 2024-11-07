grammar TinyPythonGrammar;

start: (assign | arith)* EOF;

assign: VAR ASSIGN_OP (INT | FLOAT | BOOLEAN | string | array | VAR);


arith: operand ARITH_OP operand (ARITH_OP operand)*;

operand: VAR | INT;

ARITH_OP: '+' | '-' | '*' | '/' | '%';

ASSIGN_OP: '=' | '+=' | '-=' | '*=' | '/=';


array: '[' (((INT ',')+|(string ',')+|(FLOAT ',')+))? (INT|string|FLOAT) ']';


VAR: [a-zA-Z]+[a-zA-Z0-9]*('_'*[a-zA-Z0-9])*;

INT: [0-9]+;

FLOAT: [0-9]+('.'[0-9]+)?;

BOOLEAN: 'True' | 'False';

string: '\'' .+ '\'' |  '"' .+ '"';


WS: [ /t/r]+ -> skip;