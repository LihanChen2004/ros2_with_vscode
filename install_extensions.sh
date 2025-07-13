#!/bin/bash

# Read extension names from a file and install them
while IFS= read -r line; do
  # Skip comments and empty lines
  if [[ "$line" =~ ^# ]] || [[ -z "${line//[[:space:]]/}" ]]; then
    continue
  fi
  code --install-extension "$line"
done < "$(dirname "$0")/install_extensions.txt"