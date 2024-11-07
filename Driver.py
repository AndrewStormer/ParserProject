import sys
from io import StringIO
from antlr4 import *
from TinyPythonGrammarLexer import TinyPythonGrammarLexer
from TinyPythonGrammarParser import TinyPythonGrammarParser
from antlr4.tree.Trees import Trees

filepath = "./project_deliverable_1.py"

def main():

	    # OR you can use a FileStream

	s = FileStream(filepath)
	
	lexer = TinyPythonGrammarLexer(s)
	tokens = CommonTokenStream(lexer)
	parser = TinyPythonGrammarParser(tokens)


	tree = parser.start()

	if parser.getNumberOfSyntaxErrors() > 0:
		print("failed")
	else:
		print("passed")

main()