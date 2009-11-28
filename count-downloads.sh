#! /bin/bash

for FILE
in clqr-a4-consec.pdf clqr-a4-booklet-all.pdf clqr-a4-booklet-four.pdf \
    clqr-letter-consec.pdf clqr-letter-booklet-all.pdf clqr-letter-booklet-four.pdf \
    clqr.tar.gz
do
    if [[ /home/groups/clqr/log/combined.prev.log \
        -nt /home/groups/clqr/htdocs/counters/${FILE}.all-time-counter ]];
    then
        touch /home/groups/clqr/htdocs/counters/${FILE}.all-time-counter; # in case it didn't exist
        echo $(( `cat /home/groups/clqr/htdocs/counters/${FILE}.all-time-counter` \
	    + \
	    `grep --count -e "GET /${FILE} .* 200 " \
	    /home/groups/clqr/log/combined.prev.log` )) \
	    > /home/groups/clqr/htdocs/counters/${FILE}.all-time-counter
    fi
    echo $(( `cat /home/groups/clqr/htdocs/counters/${FILE}.all-time-counter` + \
        `grep --count -e "GET /${FILE} .* 200 " \
        /home/groups/clqr/log/combined.curr.log` )) \
        > /home/groups/clqr/htdocs/counters/${FILE}.current-counter
done
