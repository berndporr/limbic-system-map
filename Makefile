all:
	git tag > tag.txt
	cat tag.txt
	latex limbic
	bibtex limbic
	latex limbic
	dvipdf limbic
	latex2html -init_file latex2html.config limbic.tex
	cp limbic/*.html limbic/*.png limbic/*.css .
	git add *html *png *css
