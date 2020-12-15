We have written Lex and Yacc in Ocaml hence the user needs to install Ocaml interpreter and compiler.

As we have written Code generation in Java, Java is a prereq for this. For installing java, follow
https://linuxize.com/post/install-java-on-ubuntu-18-04/

 To install Ocaml and all the dependencies of python we used for the project run the "prereq.sh" bash script in **sudo** mode

 1. $ sudo su
 2. $ bash prereqs.sh 

Instructions to Compile:

    -> $ make
    -> $ ./stoichy <path_to_input_file> 
    -> $ make clean # To clean all files
