OUTPUT=CV_Benjamin_Collet

all: rerun clean

rerun: english french
	@pdflatex -jobname [en]$(OUTPUT) english > /dev/null && pdflatex -jobname [fr]$(OUTPUT) french > /dev/null

english: english.tex
	@pdflatex -jobname [en]$(OUTPUT) english

french: french.tex
	@pdflatex -jobname [fr]$(OUTPUT) french

clean: 
	@rm -f *.aux *.log *.out

distclean: clean
	@rm -f *.pdf
