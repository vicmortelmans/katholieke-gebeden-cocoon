#!/bin/sh
python -m SimpleHTTPServer &
while sleep 1 ; do ls articles/*.markdown toc.xml css/*.css | entr -d ant ; done
