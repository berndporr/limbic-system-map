all:
	git tag | tail -1 > tag.txt
	cat tag.txt
	pdflatex limbic-doc
	bibtex limbic-doc
	pdflatex limbic-doc
	bibtex limbic-doc
	pdflatex limbic-doc
	latex2html -init_file latex2html.config limbic-doc.tex
	cp limbic-doc/*.html limbic-doc/*.png limbic-doc/*.css .
	git add *html *png *css
