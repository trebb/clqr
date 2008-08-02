#!/bin/bash
#
#       Fetch news and prune them for inclusion by html/index.php
#
/usr/bin/wget -q -O news-clqr.tmp \
    'http://developer.berlios.de/export/projnews.php?group_id=9765&limit=10&flat=1&show_summaries=1' \
    > /dev/null
/bin/sed -e "s/  &nbsp; - &nbsp; <a href=\"\/\/developer.berlios.de\/projects\/clqr\/\">Common Lisp Quick Reference<\/a>//g"\
    -e "s/<a [^>]*>//g" -e "s/<\/a>//g"\
    -e "s/<b>/<h5>/g" -e "s/<\/b>/<\/h5>/g" \
    -e "s/<i>/<i>[/g" -e "s/<\/i>/]<\/i>/g" \
    -e "s/<div .*<\/div>//g" -e "s/<hr [^>]*>/<p>/g"\
    -e "s/^[ \t\]*//g" -e "s/&nbsp;&nbsp;&nbsp;//g"\
    news-clqr.tmp > /home/groups/clqr/htdocs/news-clqr.html
/bin/rm news-clqr.tmp
