all: compile clean

restart:
	rm -f thesis_book.pdf

compile: restart
	pdflatex thesis_book.tex
	bibtex thesis_book
	pdflatex thesis_book.tex
	pdflatex thesis_book.tex

clean: restart compile
	rm -f  *.log *.out *.blg *.aux *.synctex.gz
