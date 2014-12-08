# Copyright (C) 2008, 2009, 2010, 2011, 2012, 2014 Bert Burgemeister
#
# Permission is granted to copy, distribute and/or modify this
# document under the terms of the GNU Free Documentation License,
# Version 1.2; with no Invariant Sections, no Front-Cover Texts and
# no Back-Cover Texts. For details see file COPYING.

SEND-TO-LOG	= | tee -a lastbuild.log

LATEX		= latex
MAKEINDEX	= makeindex -c
MPOST		= TEX=latex mpost
DVIPS		= dvips
PSNUP-A4	= psnup -W10.5cm -H29.7cm -pa4 -2
PSNUP-LETTER	= psnup -W4.25in -H11in -pletter -2
PSBOOK-ALL	= psbook
PSBOOK-FOUR	= psbook -s4
PS2PDF		= ps2pdf -dPDFSETTINGS=/prepress
CONVERT		= convert
MONTAGE		= montage
HEAD		= head
TAIL		= tail
TOUCH		= touch
CP		= cp -v
RM		= rm -f -v
MV		= mv -f -v
# trying to find GNU Make
MAKE		= `which gmake || which make`
GZIP		= gzip
GIT_REVISION	= git describe | sed 's/\(.*-.*\)-.*/\1/'
GIT_ARCHIVE	= git archive --format=tar --prefix=clqr/ HEAD | $(GZIP)
GIT_LOG		= git log
DATE		= git log HEAD^..HEAD --date=short | awk '/Date:/{print $$2}' | tr -d '\n\\'

all: letter a4

letter:
	$(MAKE) letter-booklets
	$(MAKE) clqr-letter-consec.pdf

a4:
	$(MAKE) a4-booklets
	$(MAKE) clqr-a4-consec.pdf

letter-booklets: clqr-letter-booklet-all.pdf clqr-letter-booklet-four.pdf

a4-booklets:  clqr-a4-booklet-all.pdf clqr-a4-booklet-four.pdf

clqr-letter-consec.pdf: clqr-letter-consec.ps
	$(PS2PDF) $< $@ $(SEND-TO-LOG)

clqr-a4-consec.pdf: clqr-a4-consec.ps
	$(PS2PDF) $< $@ $(SEND-TO-LOG)

clqr-letter-booklet-%.pdf: clqr-letter-booklet-%.ps paper-letter.flag
	$(PS2PDF) -sPAPERSIZE=letter $< $@ $(SEND-TO-LOG)

clqr-a4-booklet-%.pdf: clqr-a4-booklet-%.ps paper-a4.flag
	$(PS2PDF) -sPAPERSIZE=a4 $< $@ $(SEND-TO-LOG)

clqr-letter-booklet-%.ps: clqr-letter-signature-%.ps
	$(PSNUP-LETTER) $< > $@ $(SEND-TO-LOG)

clqr-a4-booklet-%.ps: clqr-a4-signature-%.ps
	$(PSNUP-A4) $< > $@ $(SEND-TO-LOG)

clqr-%-signature-all.ps: clqr-%-consec-black.ps
	$(PSBOOK-ALL) $< $@ $(SEND-TO-LOG)

clqr-%-signature-four.ps: clqr-%-consec-black.ps
	$(PSBOOK-FOUR) $< $@ $(SEND-TO-LOG)

clqr-%-consec.ps: clqr-%-colorful.dvi
	$(DVIPS) -o $@ $< $(SEND-TO-LOG)

clqr-%-consec-black.ps: clqr-%-black.dvi
	$(DVIPS) -o $@ $< $(SEND-TO-LOG)

clqr-%-colorful.dvi: clqr.tex clqr-*.tex clqr.*.tex clqr-types-and-classes.1 paper-%.flag revision-number color-colorful.flag
	$(TOUCH) clqr.ind $(SEND-TO-LOG)
	$(LATEX) clqr.tex $(SEND-TO-LOG)
	$(LATEX) clqr.tex $(SEND-TO-LOG)
	$(MAKEINDEX) -s clqr.ist clqr.idx $(SEND-TO-LOG)
	$(LATEX) clqr.tex $(SEND-TO-LOG)
	$(MV) clqr.dvi $@ $(SEND-TO-LOG)

clqr-%-black.dvi: clqr.tex clqr-*.tex clqr.*.tex clqr-types-and-classes.1 paper-%.flag revision-number color-black.flag
	$(TOUCH) clqr.ind $(SEND-TO-LOG)
	$(LATEX) clqr.tex $(SEND-TO-LOG)
	$(LATEX) clqr.tex $(SEND-TO-LOG)
	$(MAKEINDEX) -s clqr.ist clqr.idx $(SEND-TO-LOG)
	$(LATEX) clqr.tex $(SEND-TO-LOG)
	$(MV) clqr.dvi $@ $(SEND-TO-LOG)

clqr-types-and-classes.1 clqr-types-and-classes.2 \
clqr-types-and-classes.3 clqr-types-and-classes.4 \
clqr-types-and-classes.5: clqr-types-and-classes.mp clqr.macros.tex clqr.packages.tex
	$(MPOST) $< $(SEND-TO-LOG)

paper-a4.flag:
	$(CP) paper-a4.tex paper-current.tex $(SEND-TO-LOG)
	$(RM) paper-letter.flag $(SEND-TO-LOG)
	$(TOUCH) $@

paper-letter.flag:
	$(CP) paper-letter.tex paper-current.tex $(SEND-TO-LOG)
	$(RM) paper-a4.flag $(SEND-TO-LOG)
	$(TOUCH) $@

color-colorful.flag:
	$(CP) color-colorful.tex color-current.tex $(SEND-TO-LOG)
	$(RM) color-black.flag $(SEND-TO-LOG)
	$(TOUCH) $@

color-black.flag:
	$(CP) color-black.tex color-current.tex $(SEND-TO-LOG)
	$(RM) color-colorful.flag $(SEND-TO-LOG)
	$(TOUCH) $@

revision-number:
	$(GIT_REVISION) | tee REVISION.tex > release-revision.txt
	$(DATE) | tee DATE.tex > release-date.txt

clean:
	$(RM) *.dvi *.toc *.aux *.log *.idx *.ilg *.ind *.out *.ps *.pdf *~ \
	*.flag *.jpg *.jpg *.tar.gz REVISION.tex DATE.tex \
	latest-changes.html release-revision.txt release-date.txt \
	      *.[12345] *.mpx mpxerr.tex paper-current.tex color-current.tex
	$(RM) -r gh-pages


# Project hosting, Github

sample-frontcover.jpg: clqr-a4-consec.pdf
	$(CONVERT) $<'[0]' -verbose -background white -alpha remove -alpha off -resize 40% temp.jpg $(SEND-TO-LOG)
	$(MONTAGE) temp.jpg -tile 1x1 -geometry +1+1 -background gray $@ $(SEND-TO-LOG)
	$(RM) temp.jpg

sample-firstpage-%.jpg: clqr-a4-booklet-%.pdf
	$(CONVERT) $<'[0]' -verbose -background white -alpha remove -alpha off -resize 15% temp.jpg $(SEND-TO-LOG)
	$(MONTAGE) temp.jpg -tile 1x1 -geometry +1+1 -background gray $@ $(SEND-TO-LOG)
	$(RM) temp.jpg

sample-firstpage-consec.jpg: clqr-a4-consec.pdf
	$(CONVERT) $<'[0]' -verbose -background white -alpha remove -alpha off -resize 15% temp.jpg $(SEND-TO-LOG)
	$(MONTAGE) temp.jpg -tile 1x1 -geometry +1+1 -background gray $@ $(SEND-TO-LOG)
	$(RM) temp.jpg

sample-source.jpg: clqr-numbers.tex
	$(HEAD) -n 57  $< | $(TAIL) -n 40 | $(CONVERT) -font Courier -crop 120x80+30+2 +repage label:@- temp.jpg $(SEND-TO-LOG)
	$(MONTAGE) temp.jpg -tile 1x1 -geometry +1+1 -background gray $@ $(SEND-TO-LOG)
	$(RM) temp.jpg

latest-changes.html: clqr.tex clqr-*.tex
	if $(GIT_LOG) -5 --pretty=format:"<p><i>%ci</i>%n<br />%s%n<br />%b</p>" > $@; then true; else true; fi $(SEND-TO-LOG)

gh-publish:
	$(RM) -r gh-pages
	mkdir gh-pages
	$(MAKE) all
	$(CP) clqr-a4-consec.pdf gh-pages/
	$(CP) clqr-letter-consec.pdf gh-pages/
	$(CP) clqr-a4-booklet-all.pdf gh-pages/
	$(CP) clqr-a4-booklet-four.pdf gh-pages/
	$(CP) clqr-letter-booklet-all.pdf gh-pages/
	$(CP) clqr-letter-booklet-four.pdf gh-pages/
	$(MAKE) gh-pages/sample-frontcover.jpg \
		gh-pages/sample-firstpage-all.jpg \
		gh-pages/sample-firstpage-four.jpg \
		gh-pages/sample-firstpage-consec.jpg \
		gh-pages/sample-source.jpg \
		gh-pages/clqr.tar.gz \
		gh-pages/404.html \
		gh-pages/CNAME \
		gh-pages/README \
		gh-pages/download.html \
		gh-pages/favicon.ico \
		gh-pages/index.html \
		gh-pages/license.html \
		gh-pages/new-pure.css \
		gh-pages/printing.html \
		gh-pages/robots.txt \
		gh-pages/source.html
	cd gh-pages; git init; git add ./; git commit -a -m "gh-pages pseudo commit"; git push git@github.com:trebb/clqr.git +master:gh-pages

gh-pages/sample-%.jpg: sample-%.jpg
	$(CP) $< $@

gh-pages/index.html: html-template/index.html latest-changes.html
	sed -e "/<h3>Latest Changes<\/h3>/ r latest-changes.html" html-template/index.html > $@

gh-pages/download.html: html-template/download.html revision-number
	sed -e "/This is revision/ r REVISION.tex" -e "/<!- date of commit \/>/ r DATE.tex" html-template/download.html > $@

gh-pages/%.tar.gz: %.tar.gz
	$(CP) $< $@

gh-pages/%: html-template/%
	$(CP) $< $@

clqr.tar.gz: clqr.tex clqr-*.tex
	if $(GIT_ARCHIVE) > clqr.tar.gz; then true; else true; fi $(SEND-TO-LOG)
