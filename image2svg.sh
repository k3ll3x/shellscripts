#!/bin/bash

# Check if the required tools are installed
if ! command -v convert &> /dev/null || ! command -v potrace &> /dev/null; then
    echo "Please install ImageMagick and Potrace."
    exit 1
fi

# Check for input argument
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <input_image.png>"
    exit 1
fi

INPUT_IMAGE="$1"
OUTPUT_SVG="${INPUT_IMAGE%.*}.svg"

# Step 1: Convert PNG to a bitmap (PBM format)
convert "$INPUT_IMAGE" -threshold 50% -colors 2 -depth 1 -type bilevel "${INPUT_IMAGE%.*}.pbm"

# Step 2: Use Potrace to convert PBM to SVG
potrace -s -o "$OUTPUT_SVG" "${INPUT_IMAGE%.*}.pbm"

# Step 3: Clean up the intermediate PBM file
rm "${INPUT_IMAGE%.*}.pbm"

echo "SVG created: $OUTPUT_SVG"

