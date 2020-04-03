# Limbic-system map

This is the underlying repository which documents the limbic system
predominantly of the rat. Please visit:

https://berndporr.github.io/limbic-system/

## Document formats and software

Both the map and the text have open data formats and have been
created with open source software.

### draw.io

The brain map `limbic-map.xml` has been drawn with
`draw.io`: https://app.diagrams.net/

### LaTeX

The document is written in LaTex with bibtex entries. The brain map embedded
in the LaTeX document is a PDF export from `draw.io`.


### Pre-requisites

 - Ubuntu 18.04.4 LTS
 - LaTeX
 - LaTeX2HTML Version 2018 (Released Feb 1, 2018)
 - git
 - draw.io (standalone or online version)
 - nginx for local web-page testing

### Local install

 - Copy the files into the root directory of a web server, for example `/var/www/html`.
 - Change into the directory and do `make`.
 - With your browser then load `http://localhost/`.
 - `limbic-doc`.pdf contains the printable version

### Creating the documents

 - Open `limbic-map.xml` with draw.io and save the map as `limbic-map.pdf`.
 - Just run `make` which (re-) generates both the web page and the PDF.


# Maintainer

Bernd Porr <Bernd.porr@glasgow.ac.uk>, mail@berndporr.me.uk
