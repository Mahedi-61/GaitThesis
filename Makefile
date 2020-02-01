all: compile clean

restart:
	rm -f thesis.pdf

compile: restart
	pdflatex gait_thesis.tex
	bibtex gait_thesis
	pdflatex gait_thesis.tex
	pdflatex gait_thesis.tex

clean: restart compile
	rm -f  *.log *.out *.blg *.aux *.synctex.gz
