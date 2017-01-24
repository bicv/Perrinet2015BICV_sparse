default: pdf

SRC = sparse
pdf: $(SRC).pdf
LATEXMK = latexmk -bibtex -pdf

$(SRC).pdf: $(SRC).tex
	$(LATEXMK) $(SRC).tex

edit_linux: linux_edit
linux_edit:
	texmaker ${SRC}.tex &
	gedit Makefile &

edit_mac: mac_edit
mac_edit:
	open *.tex
	#open Makefile
	#open -a /Applications/TeX/BibDesk.app/  ${SRC}.bib

# cleaning macros

touch:
	touch *.tex

clean:
	rm -f *.dvi *.ps *.out *.log *.aux *.bbl *.blg *.snm *.fls *.nav *.toc *.fff *.synctex.gz* *.fdb_latexmk

.PHONY:  all clean
