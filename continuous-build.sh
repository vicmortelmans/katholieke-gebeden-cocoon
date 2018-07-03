#!/bin/sh
python -m SimpleHTTPServer &
while sleep 1 ; do ls articles/*.markdown js/*.js toc.xml *.xslt css/*.css | entr -d ant ; done
