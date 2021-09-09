##
# Project Title
#
# @file
# @version 0.1

make:
	ln -s ../../template/main.bib main_P.bib; \
	ln -s ../../template/portada.tex portada.tex; \
	ln -s ../../template/main_P.tex main_P.tex; \
	pandoc main.org -o main.tex && \
	pdflatex  -shell-escape -interaction nonstopmode  main_P && \
	biber main_P && \
	pdflatex  -shell-escape -interaction nonstopmode  main_P; \
	pdflatex  -shell-escape -interaction nonstopmode  main_P; \
	rm *.bib portada.tex main_P.tex main.tex  *.xml *.log *.aux *.blg *.bcf *.bbl *.out

clean:
	rm *.bib portada.tex main_P.tex main.tex  *.xml *.log *.aux *.blg *.bcf *.bbl *.out *.pdf

# end
