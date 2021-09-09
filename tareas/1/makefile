##
# Project Title
#
# @file
# @version 0.1

make:
	ln -s ../../template/main.bib main_P.bib > /dev/null; \
	ln -s ../../template/portada.tex portada.tex > /dev/null; \
	ln -s ../../template/main_P.tex main_P.tex > /dev/null; \
	pandoc main.org -o main.tex > /dev/null && \
	pdflatex  -shell-escape -interaction nonstopmode  main_P > /dev/null && \
	biber main_P > /dev/null && \
	pdflatex  -shell-escape -interaction nonstopmode  main_P > /dev/null; \
	pdflatex  -shell-escape -interaction nonstopmode  main_P > /dev/null; \
	rm -rf *.bib _minted-main_P/ portada.tex main_P.tex main.tex  *.xml *.log *.aux *.blg *.bcf *.bbl *.out > /dev/null

clean:
	rm -rf *.bib portada.tex main_P.tex main.tex  *.xml *.log *.aux *.blg *.bcf *.bbl *.out *.pdf _minted-main_P/

# end
