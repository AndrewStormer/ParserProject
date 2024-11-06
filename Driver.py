import sys
from io import StringIO
from antlr4 import *
from TinyPythonLexer import TinyPythonLexer
from TinyPythonParser import TinyPythonParser
from antlr4.tree.Trees import Trees
#Hello
filepath = "./project_deliverable_1.py"

def main():
	
        # OR you can use a FileStream
    
        s = FileStream(filepath)
    
    
	lexer = TinyPythonLexer(s)
	stream = CommonTokenStream(lexer)
	parser = TinyPythonParser(stream)
	
	tree = parser.prog()
	
	if parser.getNumberOfSyntaxErrors() > 0:
		print("failed")
	else:
		print("passed")

main()

