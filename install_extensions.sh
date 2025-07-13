#!/bin/bash

# Read extension names from a file and install them
while IFS= read -r line; do
  # Skip comments and empty lines
  if [[ "$line" =~ ^# ]] || [[ -z "$line" ]]; then
    continue
  fi
  code --install-extension "$line"
done < "install_extensions.txt"