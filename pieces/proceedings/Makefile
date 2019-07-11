.PHONY: pdf clean

clean:
	rm -f *.aux
	rm -f *.lof
	rm -f *.log
	rm -f *.lot
	rm -f *.fls
	rm -f *.out
	rm -f *.bbl
	rm -f *.dvi
	rm -f *.blg
	rm -f *.pdf

pdf:
	latex test.tex
	bibtex test.aux
	pdflatex test.tex # до эотго места не доходит, запускать вручную.
