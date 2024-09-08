# Bash Script Template

```bash
#!/bin/bash
set -euo pipefail

# Script Description: [Briefly describe what this script does]
# Author: [Your Name]
# Version: 0.1.0 [use semantic versioning: https://semver.org/]
# License: [MIT]
# Creation Date: [dd/mm/yyyy]
# Last Modified: [dd/mm/yyyy]
# Usage: script.sh [OPTIONS]

# Constants
DEFAULT_OUTPUT_FILE="${PWD}/output.txt"  # Default output file (if applicable)
DEFAULT_OPTION_VALUE=100  # Example of a default value for an option

# ASCII Art
print_ascii_art() {
  echo "
  [Create ASCII art with: http://patorjk.com/software/taag/#p=display&f=ANSI%20Shadow&t=APP_NAME]
  "
}

# Function to display help
show_help() {
  echo "
Usage: $0 [OPTIONS]

Options:
  -t, --text TEXT                       [Description of text option]
  -f, --file FILE                       [Description of file option]
  -o, --output_file OUTPUT_FILE         [Description of output_file option] (default: $DEFAULT_OUTPUT_FILE)
  -h, --help                            Show this help message

Examples:
  $0 -t 'Example text' -o output.txt
  $0 -f input.txt -o output.txt
"
}

# Function for error handling
error_exit() {
  echo "Error: $1" >&2
  exit 1
}

# Function for main logic (to be customized for specific script functionality)
main_logic() {
  local input="$1"
  local output_file="$2"

  # Example of main script functionality
  # (Replace this with actual script logic)
  echo "Processing input: $input"
  echo "Output will be saved to: $output_file"
}

# Main function to encapsulate script logic
main() {
  # Default values
  local text=""
  local file=""
  local output_file=$DEFAULT_OUTPUT_FILE

  # Parse command-line options
  while [[ $# -gt 0 ]]; do
    case "$1" in
      -t|--text)
        text="$2"
        shift 2
        ;;
      -f|--file)
        file="$2"
        shift 2
        ;;
      -o|--output_file)
        output_file="$2"
        shift 2
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

  # Validate inputs
  if [[ -z "$text" && -z "$file" ]]; then
    error_exit "You must provide either text (-t) or a file (-f)."
  fi

  # Read input from text or file (example logic, modify as needed)
  local input_content=""
  if [[ -n "$text" ]]; then
    input_content="$text"
  elif [[ -n "$file" ]]; then
    if [[ ! -f "$file" ]]; then
      error_exit "File not found: $file"
    fi
    input_content=$(< "$file")
  fi

  # Call the main logic function with the necessary arguments
  main_logic "$input_content" "$output_file"

  echo "Output saved to $output_file"
}

# Print ASCII Art
print_ascii_art

# Execute the main function
main "$@"
```