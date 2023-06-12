#!/bin/bash
for f in *.pdf
do 
    file_png="${f//.pdf/.png}"
    if [ ! -f $file_png ]; then
        echo $file_png ' created.'
        convert -thumbnail x300 -background white -alpha remove "$f"[0] "${f%.pdf}.png"
    fi
done
