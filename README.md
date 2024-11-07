# ParserProject

This is a small python parser created by Andrew Stormer and Luke Howard for CMP_SC 4450 Principles of Programming Languages created in Python using Antlr.

## Start Up

Download antlr 4.13.2 (instruction can be found [here](https://tomassetti.me/antlr-mega-tutorial/#chapter11)). Then type the following command to generate the required lexer and parser files

```
    antlr4 -Dlanguage=Python3 TinyPythonGrammar
```

and then you are free to parse the code specified in filepath in Driver.py by running the following

```
    python3 Driver.py
```
