#!/bin/bash
# Script which gets bibtex from medline and then starts emacs for copy/paste
# Just needs the medline PMID from the bottom of the page or from the link.
# Usage: getmedline.sh <PMID>
rm -f /tmp/lit.xml tmp.bib
wget -O /tmp/lit.xml https://eutils.ncbi.nlm.nih.gov/entrez/eutils/efetch.fcgi\?db=pubmed\&id=$1\&retmode=xml
xsltproc pubmed2bibtex.xsl /tmp/lit.xml > tmp.bib
emacs tmp.bib &

