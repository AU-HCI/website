PDFLATEX=pdflatex
SKIM = skim_revert.sh
OTT = ott
OTT_FLAGS := -tex_wrap false -tex_show_meta false -picky_multiple_parses false

all : pdf

pdf : lect.pdf
	$(SKIM) $(CURDIR)/lect.pdf

lect-output.tex : lect.tex Makefile lam.ott
	$(OTT) $(OTT_FLAGS) -i lam.ott  -o lam-ott.tex \
		-tex_filter lect.tex lect-output.tex

lect.pdf : lect-output.tex
	$(PDFLATEX) --jobname=lect lect-output.tex
	$(PDFLATEX) --jobname=lect lect-output.tex

clean : 
	rm -f *.aux *.dvi *.ps *.log *.pdf *~ *.out
