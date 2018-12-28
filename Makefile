
.PHONY: all draft clean

all: report.pdf report.bbl

draft: report.pdf

clean:
	rm report.log
	rm report.toc
	rm report.pdf
	rm report.aux
	rm report.bcf
	rm report.run.xml

report.pdf: report.ltx
	xelatex --halt-on-error report.ltx

report.bbl: report.pdf refs.bib
	biber report
