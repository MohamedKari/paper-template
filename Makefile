all: paper.pdf clean

PHONY: paper.tex
paper.pdf: paper.tex
	pdflatex paper.tex
	biber paper
	pdflatex paper.tex
	pdflatex paper.tex

clean:
	rm -f *.synctex.gz *.aux *.fdb_latexmk *.fls *.log *.out *.toc *.bbl *.bcf *.blg *.run.xml

clean-all: clean
	rm -f paper.pdf

clear-biber-cache:
	rm -rf $(shell biber --cache)



