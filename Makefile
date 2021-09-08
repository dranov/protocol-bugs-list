.PHONY: all
all: table.pdf table.html table.md

table.pdf: table.tex bibliography.bib
	pdflatex -interaction=nonstopmode table
	biber table
	pdflatex -interaction=nonstopmode table

table.html: table.tex bibliography.bib
	pandoc -s table.tex --bibliography bibliography.bib --csl acm-siggraph.csl -o table.html

table.md: table.tex bibliography.bib
	pandoc -s table.tex --bibliography bibliography.bib --csl acm-siggraph.csl -t gfm -o table.md

.PHONY: clean
clean:
	rm -f table.pdf table.html table.md *.dvi *.fls *.fdb_latexmk *.bbl *.blg *.aux *.log *.synctex* *.xml *.bcf *.toc *.maf *.mtc* *.glg *.glo *.gls *.idx *.ilg *.ind *.mw *.nlo *.nls *.xdy
