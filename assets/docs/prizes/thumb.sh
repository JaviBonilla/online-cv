#!/bin/bash
for f in *.pdf
do 
    convert -thumbnail x300 -background white -alpha remove "$f"[0] "${f%.pdf}.png"
done
