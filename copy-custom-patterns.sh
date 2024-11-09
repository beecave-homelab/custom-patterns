#!/bin/bash
set -euo pipefail

# Script Description: Copies custom patterns and context files to the Fabric configuration directories.
# Author: elvee
# Version: 0.1.0
# License: MIT
# Creation Date: 27/04/2024
# Last Modified: 28/04/2024
# Usage: ./copy-custom-patterns.sh [OPTIONS]

# Constants
CONFIG_PATTERNS_DIR="$HOME/.config/fabric/patterns"
CONFIG_CONTEXTS_DIR="$HOME/.config/fabric/contexts"

# Function to display help
show_help() {
  echo "
Usage: $0 [OPTIONS]

Options:
  -a, --all         Copy all files without individual confirmation, after a single approval
  -h, --help        Display this help message

Examples:
  $0 --all
  $0
"
}

# Function for error handling
error_exit() {
  echo "Error: $1" >&2
  exit 1
}

# Function to check if an item is in an array
# Arguments:
#   $1 - Item to check
#   $2..$n - Array elements
is_in_array() {
  local item="$1"
  shift
  local element
  for element in "$@"; do
    if [[ "$element" == "$item" ]]; then
      return 0
    fi
  done
  return 1
}

# Function to copy items with optional confirmation
# Arguments:
#   $1 - Destination directory
#   [$2..$n] - Items to copy
copy_items() {
  local destination="$1"
  shift
  local item
  for item in "$@"; do
    if $COPY_ALL; then
      cp -R "$item" "$destination"
      echo "Copied '$item' to '$destination'"
    else
      read -rp "Do you want to copy '$item' to '$destination'? (y/n) " choice
      case "$choice" in
        [Yy]* )
          cp -R "$item" "$destination"
          echo "Copied '$item' to '$destination'"
          ;;
        * )
          echo "Skipping '$item'"
          ;;
      esac
    fi
  done
}

# Main function to encapsulate script logic
main() {
  # Default values
  COPY_ALL=false

  # Parse command-line options
  while [[ $# -gt 0 ]]; do
    case "$1" in
      -a|--all)
        COPY_ALL=true
        shift
        ;;
      -h|--help)
        show_help
        exit 0
        ;;
      *)
        error_exit "Invalid option: $1"
        ;;
    esac
  done

  # Define specific files to copy to the contexts directory
  context_files=(
    "create_bash_script/context/create_bash_script/bash-script-checklist.md"
    "create_bash_script/context/create_bash_script/bash-script-template.md"
  )

  # Define files and directories to exclude from patterns copying
  exclude_items=(
    "copy-custom-patterns.sh"
    ".git"
    ".gitignore"
    "LICENSE"
    "README.md"
  )

  # Collect items to copy
  pattern_items=()
  context_copy_items=()

  for item in ./*; do
    # Get the relative path without leading './'
    rel_item="${item#./}"
    
    # Exclude specified items
    if is_in_array "$rel_item" "${exclude_items[@]}"; then
      echo "Excluding '$item'"
      continue
    fi

    # Identify context files to copy
    if is_in_array "$rel_item" "${context_files[@]}"; then
      context_copy_items+=("$item")
    else
      pattern_items+=("$item")
    fi
  done

  if $COPY_ALL; then
    if [ "${#pattern_items[@]}" -gt 0 ]; then
      echo "The following pattern files will be copied to $CONFIG_PATTERNS_DIR:"
      for item in "${pattern_items[@]}"; do
        echo "  $item"
      done
    else
      echo "No pattern files to copy."
    fi

    if [ "${#context_copy_items[@]}" -gt 0 ]; then
      echo "The following context files will be copied to $CONFIG_CONTEXTS_DIR:"
      for item in "${context_copy_items[@]}"; do
        echo "  $item"
      done
    else
      echo "No context files to copy."
    fi

    read -rp "Are you sure you want to copy all these files? (y/n) " confirm
    case "$confirm" in
      [Yy]* )
        ;;
      * )
        echo "Operation cancelled by user."
        exit 0
        ;;
    esac
  fi

  # Copy pattern files
  if [ "${#pattern_items[@]}" -gt 0 ]; then
    copy_items "$CONFIG_PATTERNS_DIR" "${pattern_items[@]}"
  else
    echo "No pattern files to copy."
  fi

  # Copy context files
  if [ "${#context_copy_items[@]}" -gt 0 ]; then
    copy_items "$CONFIG_CONTEXTS_DIR" "${context_copy_items[@]}"
  else
    echo "No context files to copy."
  fi

  echo "Copied all the files. Running 'fabric -l' to check if they are available to use with fabric."
  fabric -l
}

# Execute the main function
main "$@"