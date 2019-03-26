PAPERNAME=thesis
TEXFILES =  *.tex *.bib

$(PAPERNAME).pdf : $(TEXFILES)
	pdflatex $(PAPERNAME)
	bibtex $(PAPERNAME)
	pdflatex $(PAPERNAME)
	pdflatex $(PAPERNAME)
clean:
	rm -f *.ps  *.pdf *.dvi *.aux *.log *.blg *.bbl *~ *.ilg *.idx *.out *.in *.gz
