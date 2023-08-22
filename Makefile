.PHONY: all
all: table.pdf table.html table.md README.md

table.pdf: table.tex bibliography.bib
	pdflatex -interaction=nonstopmode table
	biber table
	pdflatex -interaction=nonstopmode table
	pdflatex -interaction=nonstopmode table

table.html: table.tex bibliography.bib
	pandoc -s table.tex --bibliography bibliography.bib --csl acm-siggraph.csl --citeproc -o table.html

table.md: table.tex bibliography.bib
	pandoc -s table.tex --bibliography bibliography.bib --csl acm-siggraph.csl --citeproc -t gfm-raw_html -o table.md

README.md: table.tex bibliography.bib table.md README.template.md
	pandoc -s README.template.md --filter pandoc-include -t gfm -o README.md

.PHONY: clean
clean:
	rm -f table.pdf table.html table.md *.dvi *.fls *.fdb_latexmk *.bbl *.blg *.aux *.log *.synctex* *.xml *.bcf *.toc *.maf *.mtc* *.glg *.glo *.gls *.idx *.ilg *.ind *.mw *.nlo *.nls *.xdy
