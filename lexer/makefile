OBJS = parser.cmo lexer.cmo main.cmo 
parser : $(OBJS) # $(cmd)
	ocamlc -o parser lexer.cmo parser.cmo main.cmo
lexer.ml:lexer.mll
	ocamllex lexer.mll
parser.ml parser.mli:parser.mly
	ocamlyacc $<
%.cmo : %.ml
	ocamlc -c $<
%.cmi : %.mli 
	ocamlc -c $<
parser.cmo:parser.cmi 
clean:
	rm -rf parser.mli lexer.ml parser.ml *.cmi *.cmo

# ocamlyacc parser.mly  	parser.mli rpcal.ml
# ocamlc -c parser.mli   	parser.cmi
# ocamlc -c parser.ml  		parser.cmo
# ocamllex lexer.mll    	lexer.ml
# ocamlc -c lexer.ml 		lexer.cmi lexer.cmo