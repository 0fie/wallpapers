#!/bin/bash

# Directory containing images (change this to your actual directory)
image_dir="./Animated"

# Loop through all files in the image directory
for file in "$image_dir"/*; do
  # Check if the file is an image
  if [[ "$(file -b --mime-type "$file")" == "image/"* ]]; then
    # Extract filename
    filename=$(basename "$file")

    # Construct the Markdown link
    link="![]($image_dir/$filename)"

    # Append the link to README.md
    echo "$link" >> README.md
  fi
done

echo "Images added to README.md"
