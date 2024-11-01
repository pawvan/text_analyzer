OCAMLC = ocamlc
OCAMLOPT = ocamlopt
LIBS = str.cma

all: analyzer

analyzer: analyzer.cmo file_reader.cmo word_counter.cmo frequency_counter.cmo
	$(OCAMLC) -o analyzer $^ $(LIBS)

%.cmo: %.ml
	$(OCAMLC) -c $<

clean:
	rm -f *.cmo *.cmi analyzer
