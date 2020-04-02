all:
	git tag > tag.txt
	cat tag.txt
	latex limbic
	bibtex limbic
	latex limbic
	dvipdf limbic
	htlatex limbic "htmlconfig.cfg,NoFonts,charset=utf-8,xhtml" " -cunihtf -utf8"
	cp limbic.html index.html
