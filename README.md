# ParserProject

## About

This is a Parser for a subset of Python created using python and Antlr4 for Principles of Programming Languages at University of Missouri.

## Group Members

Andrew Stormer
Luke Howard

## Deliverables

The deliverables for this project are as follows:

- Deliverable 1
  - Arithmetic Operations
  - Assignment Operations
- Deliverable 2
  - if/elif/else blocks
  - conditional statements
- Deliverable 3
  - while and for Loops
  - Nested structures
  - Support for comments

## Software Requirements

Download [python3](https://www.python.org/downloads/) and [antlr 4.13.2](https://www.antlr.org/download/antlr-4.13.2-complete.jar) (instructions can be found [here](https://tomassetti.me/antlr-mega-tutorial/#chapter11), subsitute 4.9.3 for 4.13.2). Then type the following command to generate the required lexer and parser files

## How to Run

```
    antlr4 -Dlanguage=Python3 TinyPythonGrammar.g4
```

and then you are free to parse the code specified in the filepath variable in Driver.py by running the following

```
    python3 Driver.py
```

## Demonstration Video

https://youtu.be/EWaNRja0-h4
