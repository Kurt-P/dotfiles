#!/bin/bash

if [ -z $1 ] ; then
    echo "Usage: $0 <local code>"
    exit 0 ;
fi

curl -s http://rss.accuweather.com/rss/liveweather_rss.asp\?metric\=1\&locCode\=$1 | perl -ne 'if (/Currently/) {chomp;/\<title\>Currently: (.*)?\<\/title\>/; print "$1"; }'
