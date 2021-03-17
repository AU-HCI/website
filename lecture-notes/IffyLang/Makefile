PDFLATEX=xelatex
OTT = ott
OTT_FLAGS := -tex_wrap false -tex_show_meta false -picky_multiple_parses false

target := ../../plweb/includes/lecture-notes
name := IffyLang-Syntax-Eval

all : pdf

pdf : note.pdf

note-output.md : note.md Makefile Iffy.ott note.latex
	$(OTT) $(OTT_FLAGS) -i Iffy.ott -o Iffy-ott.tex -tex_filter note.md note-output.md

note.pdf : note-output.md
	pandoc --template=note.latex -t latex -o note.tex note-output.md
	$(PDFLATEX) note.tex

clean : 
	rm -f *.aux *.dvi *.ps *.log *.pdf *~ *.out *-output.tex *-ott.tex

plweb : note.pdf
	mkdir -p $(target)
	cp note.pdf $(target)/$(name).pdf 

oskim :
	open -a Skim.app note.pdf
