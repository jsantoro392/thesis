.IGNORE:

DRAFTTARGET = thesis 

#all: draft manuscript 
all: draft

draft: 
	#sed 's/%\\vfill/\\vfill/' < ms.tex > nsbh_pe_sgrb.tex
	pdflatex -halt-on-error 	$(DRAFTTARGET)
	bibtex 	                        $(DRAFTTARGET)
	pdflatex -halt-on-error  	$(DRAFTTARGET)
	pdflatex -halt-on-error 	$(DRAFTTARGET)

clean:
	/bin/rm -f *.dvi *.log *.aux *.toc *blg *.end *.out *~ $(DRAFTTARGET)Notes.bib $(DRAFTTARGET).bbl
