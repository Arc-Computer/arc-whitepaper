# Makefile for Arc position paper

# Main target
all: main.pdf

# Build the PDF
main.pdf: main.tex figures/*.tex glossary.tex references.bib
	pdflatex main.tex
	bibtex main
	pdflatex main.tex
	pdflatex main.tex

# Clean up auxiliary files
clean:
	rm -f *.aux *.log *.out *.toc *.lof *.lot *.bbl *.blg *.dvi *.fls *.fdb_latexmk *.synctex.gz

# Clean everything including the PDF
cleanall: clean
	rm -f main.pdf

# View the PDF
view: main.pdf
	@if [ "$(shell uname)" = "Darwin" ]; then \
		open main.pdf; \
	elif [ "$(shell uname)" = "Linux" ]; then \
		if command -v xdg-open > /dev/null; then \
			xdg-open main.pdf; \
		else \
			echo "Please open main.pdf manually"; \
		fi; \
	else \
		echo "Please open main.pdf manually"; \
	fi

.PHONY: all clean cleanall view
