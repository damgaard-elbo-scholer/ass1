
.PHONY: all clean

all: report.pdf

clean:
	rm report.log
	rm report.toc
	rm report.pdf
	rm report.aux
	rm report.bcf
	rm report.run.xml
	rm report.bbl
	rm report.blg

report.pdf: report.aux report.bbl
	xelatex -halt-on-error report.ltx

report.aux: report.ltx
	xelatex -halt-on-error -no-pdf report.ltx
	rm report.xdv

report.bbl: report.aux refs.bib
	biber report
