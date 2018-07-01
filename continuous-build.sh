#!/bin/sh
find -path "./html/*.html" -o -path "./toc.xml" | entr ant
