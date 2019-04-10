OUTPUT=CV_Benjamin_Collet

all: english french clean

english: english.tex
	@latexmk -pdf -jobname=[en]$(OUTPUT) english

french: french.tex
	@latexmk -pdf -jobname=[fr]$(OUTPUT) french

clean:
	@latexmk -pdf -jobname=[en]$(OUTPUT) english -c
	@latexmk -pdf -jobname=[fr]$(OUTPUT) french -c

distclean:
	@latexmk -pdf -jobname=[en]$(OUTPUT) english -C
	@latexmk -pdf -jobname=[fr]$(OUTPUT) french -C
