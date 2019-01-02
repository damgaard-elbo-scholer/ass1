
.PHONY: all clean

all:
	xelatex -halt-on-error -no-pdf report.ltx
	rm report.xdv
	biber report
	xelatex -halt-on-error report.ltx

# all: report.pdf

clean:
	rm report.log
	rm report.toc
	rm report.pdf
	rm report.aux
	rm report.bcf
	rm report.run.xml
	rm report.bbl
	rm report.blg
	rm report.aux.sum

# report.pdf: report.aux.sum report.bbl
# 	xelatex -halt-on-error report.ltx
# 
# report.aux.sum: report.aux
# 	shasum report.aux > .tmp.sum
# 	if cmp report.aux.sum .tmp.sum; then rm .tmp.sum; else mv .tmp.sum report.aux.sum; fi
# 
# report.aux: report.ltx
# 	xelatex -halt-on-error -no-pdf report.ltx
# 	rm report.xdv
# 
# report.bbl: report.aux.sum refs.bib
# 	biber report
