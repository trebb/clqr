# Copyright (C) 2008, 2009 Bert Burgemeister
#
# Permission is granted to copy, distribute and/or modify this
# document under the terms of the GNU Free Documentation License,
# Version 1.2 or any later version published by the Free Software
# Foundation; with no Invariant Sections, no Front-Cover Texts and
# no Back-Cover Texts. For details see file COPYING.

CLQR		= clqr
SEND-TO-LOG	= | tee -a lastbuild.log

LATEX		= latex 
MAKEINDEX	= makeindex -c
DVIPS		= dvips
PSNUP-A4	= psnup -W10.5cm -H29.7cm -pa4 -2
PSNUP-LETTER	= psnup -W4.25in -H11in -pletter -2
PSBOOK-ALL	= psbook
PSBOOK-FOUR	= psbook -s4
PS2PDF		= ps2pdf
CONVERT		= convert
MONTAGE		= montage
HEAD		= head
TAIL		= tail
TOUCH		= touch
CP		= cp --verbose
RM		= rm --force --verbose
MV		= mv --force --verbose
MAKE		= make
GZIP		= gzip
GIT_REVISION	= git-describe | sed 's/\(.*-.*\)-.*/\1/'
GIT_ARCHIVE	= git-archive --format=tar --prefix=$(CLQR)/ HEAD | $(GZIP)
GIT_LOG		= git-log
DATE		= git-log HEAD^..HEAD --date=short | awk '/Date:/{print $$2}' | tr -d '\n\\' 
RSYNC		= rsync -va
SSH		= ssh

all:	letter a4

letter:	 
	$(MAKE) letter-booklets
	$(MAKE) $(CLQR)-letter-consec.pdf

a4:	
	$(MAKE) a4-booklets
	$(MAKE) $(CLQR)-a4-consec.pdf 

letter-booklets:	$(CLQR)-letter-booklet-all.pdf $(CLQR)-letter-booklet-four.pdf

a4-booklets:	 $(CLQR)-a4-booklet-all.pdf  $(CLQR)-a4-booklet-four.pdf 

$(CLQR)-%-consec.pdf:	$(CLQR)-%-consec.ps
	$(PS2PDF) $< $@ $(SEND-TO-LOG)

$(CLQR)-letter-booklet-%.pdf:	$(CLQR)-letter-booklet-%.ps
	$(PS2PDF) -sPAPERSIZE=letter $< $@ $(SEND-TO-LOG)

$(CLQR)-a4-booklet-%.pdf:	$(CLQR)-a4-booklet-%.ps
	$(PS2PDF) -sPAPERSIZE=a4 $< $@ $(SEND-TO-LOG)

$(CLQR)-letter-booklet-%.ps:	$(CLQR)-letter-signature-%.ps color-black.flag
	$(PSNUP-LETTER) $< > $@ $(SEND-TO-LOG)

$(CLQR)-a4-booklet-%.ps:	$(CLQR)-a4-signature-%.ps color-black.flag
	$(PSNUP-A4) $< > $@ $(SEND-TO-LOG)

$(CLQR)-%-signature-all.ps:	$(CLQR)-%-consec.ps
	$(PSBOOK-ALL) $< $@ $(SEND-TO-LOG)

$(CLQR)-%-signature-four.ps:	$(CLQR)-%-consec.ps
	$(PSBOOK-FOUR) $< $@ $(SEND-TO-LOG)

$(CLQR)-%-consec.ps:	$(CLQR)-%.dvi color-colorful.flag
	$(DVIPS) -o $@ $< $(SEND-TO-LOG)

$(CLQR)-%.dvi:	$(CLQR).tex $(CLQR)-*.tex paper-%.flag revision-number
	$(TOUCH) $(CLQR).ind $(SEND-TO-LOG)
	$(LATEX) $(CLQR).tex $(SEND-TO-LOG)
	$(LATEX) $(CLQR).tex $(SEND-TO-LOG)
	$(MAKEINDEX) -s $(CLQR).ist $(CLQR).idx $(SEND-TO-LOG)
	$(LATEX) $(CLQR).tex $(SEND-TO-LOG)
	$(MV) $(CLQR).dvi $@ $(SEND-TO-LOG)

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
	$(GIT_REVISION) | tee REVISION.tex > html/release-revision.txt
	$(DATE) | tee DATE.tex > html/release-date.txt

#DATE.tex:	$(CLQR).tex $(CLQR)-*.tex 
#	$(DATE) | tee $@ > html/release-date.txt

clean:
	$(RM) *.dvi *.toc *.aux *.log *.idx *.ilg *.ind *.out *.ps *.pdf *~ html/*~ \
              *.flag *.jpg html/*.jpg *.tar.gz REVISION.tex DATE.tex \
	      html/latest-changes.html html/release-revision.txt html/release-date.txt \
              paper-current.tex color-current.tex


# Project hosting

publish:	letter a4 \
		html/sample-frontcover.jpg \
		html/sample-firstpage-all.jpg html/sample-firstpage-four.jpg \
		html/sample-firstpage-consec.jpg html/sample-source.jpg \
		html/latest-changes.html \
		$(CLQR).tar.gz
	$(MAKE) publishclean
	$(RSYNC) --delete ./ trebb@shell.berlios.de:/home/groups/ftp/pub/clqr/clqr/ $(SEND-TO-LOG)
	$(RSYNC) ./html/ trebb@shell.berlios.de:/home/groups/clqr/htdocs/ $(SEND-TO-LOG)

html/sample-frontcover.jpg:	$(CLQR)-a4-consec.pdf
	$(CONVERT) $<'[0]' -verbose -resize 40% temp.jpg $(SEND-TO-LOG)
	$(MONTAGE) temp.jpg -tile 1x1 -geometry +1+1 -background gray $@ $(SEND-TO-LOG)
	$(RM) temp.jpg

html/sample-firstpage-%.jpg:	$(CLQR)-a4-booklet-%.pdf
	$(CONVERT) $<'[0]' -verbose -resize 15% temp.jpg $(SEND-TO-LOG)
	$(MONTAGE) temp.jpg -tile 1x1 -geometry +1+1 -background gray $@ $(SEND-TO-LOG)
	$(RM) temp.jpg

html/sample-firstpage-consec.jpg:	$(CLQR)-a4-consec.pdf
	$(CONVERT) $<'[0]' -verbose -resize 15% temp.jpg $(SEND-TO-LOG)
	$(MONTAGE) temp.jpg -tile 1x1 -geometry +1+1 -background gray $@ $(SEND-TO-LOG)
	$(RM) temp.jpg

html/sample-source.jpg:	$(CLQR)-numbers.tex
	$(HEAD) -n 57  $< | $(TAIL) -n 40 | $(CONVERT) -font Courier -crop 120x80+30+2 +repage label:@- temp.jpg $(SEND-TO-LOG)
	$(MONTAGE) temp.jpg -tile 1x1 -geometry +1+1 -background gray $@ $(SEND-TO-LOG)
	$(RM) temp.jpg

html/latest-changes.html:	$(CLQR).tex $(CLQR)-*.tex 
	if $(GIT_LOG) -5 --pretty=format:"<p><i>%ci</i>%n<br />%s%n<br />%b</p>" > $@; then true; else true; fi $(SEND-TO-LOG)

$(CLQR).tar.gz:	$(CLQR).tex $(CLQR)-*.tex 
	if $(GIT_ARCHIVE) > $(CLQR).tar.gz; then true; else true; fi $(SEND-TO-LOG)

publishclean:
	$(RM) *.ps *~ html/*~
