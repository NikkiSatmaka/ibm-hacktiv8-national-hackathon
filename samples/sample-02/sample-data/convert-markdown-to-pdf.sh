#!/usr/bin/env bash

# Ensure pandoc is installed before running
if ! command -v pandoc &>/dev/null; then
  echo "Error: pandoc is not installed. Please install it first."
  exit 1
fi

# Loop through all .md files in the current directory
for file in *.md; do
  # Check if any .md files actually exist to avoid running on literal '*.md'
  [ -e "$file" ] || continue

  # README documents this directory and is not part of the course corpus.
  [ "$file" = "README.md" ] && continue

  # Strip the .md extension and define the output PDF filename
  output_pdf="${file%.md}.pdf"

  echo "Converting '$file' to '$output_pdf'..."

  # Run pandoc to generate the PDF
  pandoc "$file" -o "$output_pdf" --pdf-engine=typst -V mainfont="Noto Sans"
done

echo "All conversions completed!"
