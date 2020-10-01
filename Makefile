all: paper.pdf clean

paper.pdf: PHONY paper.tex
	pdflatex paper.tex

clean:
	rm -f *.synctex.gz *.aux *.fdb_latexmk *.fls *.log *.out *.toc *.bbl *.bcf *.blg *.run.xml

PHONY:

