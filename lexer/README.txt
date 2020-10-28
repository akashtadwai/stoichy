We have written Lex and Yacc in Ocaml hence the user needs to install Ocaml interpreter and compiler.

 To install Ocaml run the following commands consecutively.

1. $ sudo su 
2. $ add-apt-repository ppa:avsm/ppa
3. $ apt update
4. $ apt install opam

Opam is a package manager for Ocaml, To install Ocaml from Opam follow instructions from,
https://ocaml.org/docs/install.html


Instructions to Compile:

    -> $ make
    -> $ ./parser < <input_file_name> # we are just redirecting the input. eg: $ ./parser < test_cases/test1.sty  

    NOTE: The program keeps looking for the tokens hence, to forcely stop press "ctrl+D".

    -> To clean files run, $ make clean

If the Instructions in the input files are correct, the parser won't raise any error, else a syntax error
will be raised by inbuilt OcamlYacc and program quits.
