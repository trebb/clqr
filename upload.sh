#! /bin/sh
REMOTE='ftp.berlios.de'
USER='ftp'
PASSWORD='x'
FTPLOG='ftp.log'

ftp -ni $REMOTE <<_FTP>>$FTPLOG
quote USER $USER
quote PASS $PASSWORD
bin
cd /incoming
mput *.pdf
put clqr.tar.gz
quit
_FTP
