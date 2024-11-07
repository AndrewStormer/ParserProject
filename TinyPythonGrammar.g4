grammar TinyPythonGrammar;

start: (assign | arith)* EOF;

assign: var assign_op (boolean | num | arith | operand | array | string);

assign_op: '=' | '+=' | '-=' | '*=' | '/=';

arith: operand arith_op operand (arith_op operand)*;

arith_op: '+' | '-' | '*' | '/' | '%';


operand: var | num;



var: '^([a-zA-Z][a-zA-Z0-9]*(_*[a-zA-Z0-9])*)$';

array: '^/[([0-9]+(/.[0-9]+)*,|/'.*/',|/".*/",)*([0-9]+(/.[0-9]+)*|/'.*/'|/".*/")/]$';


num: '[0-9]+(/.[0-9]+)';

boolean: 'True' | 'False';

string: '^/'.*/'$' | '^/".*/"$';

