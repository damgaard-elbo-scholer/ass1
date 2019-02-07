
.PHONY: all clean draft

all:
	xelatex -halt-on-error -no-pdf report.ltx
	rm report.xdv
	biber report
	xelatex -halt-on-error report.ltx

draft:
	xelatex -halt-on-error report.ltx

clean:
	rm report.log
	rm report.toc
	rm report.pdf
	rm report.aux
	rm report.bcf
	rm report.run.xml
	rm report.bbl
	rm report.blg
	rm report.out
	rm *.aux
