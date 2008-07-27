# Copyright (C) 2008 Bert Burgemeister
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
TOUCH		= touch
CP		= cp --verbose
RM		= rm --force --verbose
MV		= mv --force --verbose
MAKE		= make
BZR_REVISION	= bzr revno | tr -d '\n\\' 
BZR_EXPORT	= bzr export
BZR_COMMIT	= bzr commit
DATE		= date -I | tr -d '\n\\' 
RSYNC		= rsync -va

all:	letter a4

letter:	$(CLQR)-letter-booklet-all.pdf $(CLQR)-letter-booklet-four.pdf $(CLQR)-letter-consec.pdf

a4:	$(CLQR)-a4-booklet-all.pdf $(CLQR)-a4-booklet-four.pdf $(CLQR)-a4-consec.pdf 

$(CLQR)-%-consec.pdf:	$(CLQR)-%-consec.ps
	$(PS2PDF) $< $@ $(SEND-TO-LOG)

$(CLQR)-letter-booklet-%.pdf:	$(CLQR)-letter-booklet-%.ps
	$(PS2PDF) -sPAPERSIZE=letter $< $@ $(SEND-TO-LOG)

$(CLQR)-a4-booklet-%.pdf:	$(CLQR)-a4-booklet-%.ps
	$(PS2PDF) -sPAPERSIZE=a4 $< $@ $(SEND-TO-LOG)

$(CLQR)-letter-booklet-%.ps:	$(CLQR)-letter-signature-%.ps
	$(PSNUP-LETTER) $< > $@ $(SEND-TO-LOG)

$(CLQR)-a4-booklet-%.ps:	$(CLQR)-a4-signature-%.ps
	$(PSNUP-A4) $< > $@ $(SEND-TO-LOG)

$(CLQR)-%-signature-all.ps:	$(CLQR)-%-consec.ps
	$(PSBOOK-ALL) $< $@ $(SEND-TO-LOG)

$(CLQR)-%-signature-four.ps:	$(CLQR)-%-consec.ps
	$(PSBOOK-FOUR) $< $@ $(SEND-TO-LOG)

$(CLQR)-%-consec.ps:	$(CLQR)-%.dvi
	$(DVIPS) -o $@ $< $(SEND-TO-LOG)

$(CLQR)-%.dvi:	$(CLQR).tex $(CLQR)-*.tex paper-%.flag REVISION.tex
	$(TOUCH) $(CLQR).ind $(SEND-TO-LOG)
	$(LATEX) $(CLQR).tex $(SEND-TO-LOG)
	$(LATEX) $(CLQR).tex $(SEND-TO-LOG)
	$(MAKEINDEX) $(CLQR).idx $(SEND-TO-LOG)
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

REVISION.tex:	DATE.tex
	if $(BZR_REVISION); then $(BZR_REVISION) > $@; else $(TOUCH) $@; fi $(SEND-TO-LOG)

DATE.tex:	$(CLQR).tex $(CLQR)-*.tex 
	$(DATE) > $@

clean:
	$(RM) *.dvi *.toc *.aux *.log *.idx *.ilg *.ind *.ps *.pdf *~ html/*~ *.flag *.jpg html/*.jpg *.tar.gz


# Project hosting

maintainance:	release publish

publish:	html/sample-frontcover.jpg html/sample-doublepage.jpg \
		html/sample-firstpage-all.jpg html/sample-firstpage-four.jpg \
		html/sample-firstpage-consec.jpg $(CLQR)-a4-consec.pdf
	$(MAKE) publishclean
	$(RSYNC) --delete ./ trebb@shell.berlios.de:/home/groups/ftp/pub/clqr/clqr/ $(SEND-TO-LOG)
	$(RSYNC) ./html/ trebb@shell.berlios.de:/home/groups/clqr/htdocs/ $(SEND-TO-LOG)

release:	emergency-commit letter a4 $(CLQR).tar.gz html/release-revision.txt
	./upload.sh

html/release-revision.txt:	html/release-date.txt
	$(BZR_REVISION) > $@

html/release-date.txt:	$(CLQR).tex $(CLQR)-*.tex 
	$(DATE) > $@

html/sample-frontcover.jpg:	$(CLQR)-a4-consec.pdf
	$(CONVERT) $<'[0]' -verbose -resize 30% temp.jpg $(SEND-TO-LOG)
	$(MONTAGE) temp.jpg -tile 1x1 -geometry +1+1 -background gray $@ $(SEND-TO-LOG)
	$(RM) temp.jpg

html/sample-doublepage.jpg:	$(CLQR)-a4-consec.pdf
	$(CONVERT) $<'[19-20]' -verbose -resize 30% temp.jpg $(SEND-TO-LOG)
	$(MONTAGE) temp-0.jpg temp-1.jpg  -tile 2x1 -geometry +1+1 -background gray $@ $(SEND-TO-LOG)
	$(RM) temp-0.jpg temp-1.jpg

html/sample-firstpage-%.jpg:	$(CLQR)-a4-booklet-%.pdf
	$(CONVERT) $<'[0]' -verbose -resize 15% temp.jpg $(SEND-TO-LOG)
	$(MONTAGE) temp.jpg -tile 1x1 -geometry +1+1 -background gray $@ $(SEND-TO-LOG)
	$(RM) temp.jpg

html/sample-firstpage-consec.jpg:	$(CLQR)-a4-consec.pdf
	$(CONVERT) $<'[0]' -verbose -resize 15% temp.jpg $(SEND-TO-LOG)
	$(MONTAGE) temp.jpg -tile 1x1 -geometry +1+1 -background gray $@ $(SEND-TO-LOG)
	$(RM) temp.jpg

emergency-commit:	
	if $(BZR_COMMIT) -m "committed automatically by Makefile"; then true; else true; fi

$(CLQR).tar.gz:
	$(BZR_EXPORT) $@ $(SEND-TO-LOG)

publishclean:
	$(RM) *.ps *~ html/*~
