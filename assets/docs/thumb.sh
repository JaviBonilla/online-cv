#!/bin/bash

for f in *.pdf; do
    file_webp="${f%.pdf}.webp"

    if [ ! -f "$file_webp" ]; then
        echo "$file_webp created."
        convert \
            "$f"[0] \
            -thumbnail x300 \
            -background white \
            -alpha remove \
            -quality 85 \
            "$file_webp"
    fi
done
