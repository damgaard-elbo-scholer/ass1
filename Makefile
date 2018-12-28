
.PHONY: all draft clean

all: report.pdf

draft:

clean:

report.pdf: report.ltx
	xelatex --halt-on-error report.ltx
