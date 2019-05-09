OUTPUT=cv_benjamin_collet
EN=$(OUTPUT).en
FR=$(OUTPUT).fr

all: english french clean

english: english.tex
	@latexmk -pdf -jobname=$(EN) english

french: french.tex
	@latexmk -pdf -jobname=$(FR) french

clean:
	@latexmk -pdf -jobname=$(EN) english -c
	@latexmk -pdf -jobname=$(FR) french -c

distclean:
	@latexmk -pdf -jobname=$(EN) english -C
	@latexmk -pdf -jobname=$(FR) french -C
