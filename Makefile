.PHONY: all report clean
JOB = main

all: report

report: $(JOB).pdf

$(JOB).pdf: $(JOB).tex main.bib acmart.cls ACM-Reference-Format.bst
	pdflatex $(JOB)
	bibtex $(JOB)
	pdflatex $(JOB)
	pdflatex $(JOB)

clean:
	rm -rfv $(JOB).pdf *.log *.aux *.bbl *.blg *.out *.toc *.run.xml
