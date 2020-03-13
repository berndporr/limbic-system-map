all:
	git tag > tag.txt
	cat tag.txt
	latex limbic
	bibtex limbic
	latex limbic
	dvipdf limbic
	htlatex limbic
	cp limbix.html index.html
