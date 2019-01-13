#!/bin/sh

echo "Running entrypoint.sh"

# Loop over pdf files inside input folder
for pdf in $(pwd)/input/*.pdf ; do
  # Check if it's a file - avoid running script on folders
  [[ -f "$pdf" ]] || continue

  echo "Splitting PDF $pdf"
  # Run Stapler cmd - DO NOT change output path
  stapler split $pdf -d "$(pwd)/output"
done