all:
	pdflatex limbic-doc
	bibtex limbic-doc
	pdflatex limbic-doc
	bibtex limbic-doc
	pdflatex limbic-doc
	latex2html -init_file latex2html.config limbic-doc.tex
	cp limbic-doc/*.html .
	git add *html *png *css
