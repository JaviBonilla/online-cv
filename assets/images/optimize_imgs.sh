#!/bin/bash

# Directory containing the images
IMAGE_DIR="./"

# Change to the image directory
cd "$IMAGE_DIR" || exit

# Convert all jpg images to webp
for img in *.jpg; do
  [ -e "$img" ] || continue
  cwebp "$img" -o "${img%.jpg}.webp"
done

# Convert all jpeg images to webp
for img in *.jpeg; do
  [ -e "$img" ] || continue
  cwebp "$img" -o "${img%.jpeg}.webp"
done

# Convert all png images to webp
for img in *.png; do
  [ -e "$img" ] || continue
  cwebp "$img" -o "${img%.png}.webp"
done

# Convert all gif images to webp using gif2webp
for img in *.gif; do
  [ -e "$img" ] || continue
  gif2webp "$img" -o "${img%.gif}.webp"
done

echo "Conversion complete!"
