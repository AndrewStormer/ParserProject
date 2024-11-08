# ParserProject

This is a small python parser created by Andrew Stormer and Luke Howard for CMP_SC 4450 Principles of Programming Languages written in Python using Antlr.

## Start Up

Download [python3](https://www.python.org/downloads/) and [antlr 4.13.2](https://www.antlr.org/download/antlr-4.13.2-complete.jar) (instructions can be found [here](https://tomassetti.me/antlr-mega-tutorial/#chapter11), subsitute 4.9.3 for 4.13.2). Then type the following command to generate the required lexer and parser files

```
    antlr4 -Dlanguage=Python3 TinyPythonGrammar.g4
```

and then you are free to parse the code specified in the filepath variable in Driver.py by running the following

```
    python3 Driver.py
```
