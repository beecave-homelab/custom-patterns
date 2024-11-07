#!/bin/bash

# Define specific files to copy to the context directory
context_files=(
    "create_bash_script/context/create_bash_script/bash-script-checklist.md"
    "create_bash_script/context/create_bash_script/bash-script-template.md"
)

# Define files and directories to exclude, including context files
exclude_items=(
    "copy-custom-patterns.sh"
    ".git"
    ".gitignore"
    "LICENSE"
    "README.md"
    "create_bash_script/context/create_bash_script/bash-script-checklist.md"
    "create_bash_script/context/create_bash_script/bash-script-template.md"
)

# Copy non-excluded items to patterns
for item in ./*; do
    # Get the base name of the item
    base_item=$(basename "$item")
    
    # Check if the item is in the exclude list
    if [[ " ${exclude_items[@]} " =~ " ${base_item} " ]]; then
        echo "Excluding '$item'"
        continue
    fi

    read -p "Do you want to copy '$item' to ~/.config/fabric/patterns? (y/n) " choice
    case "$choice" in 
      y|Y ) cp -R "$item" ~/.config/fabric/patterns;;
      * ) echo "Skipping '$item'";;
    esac
done

# Copy context files to context
for context_file in "${context_files[@]}"; do
    read -p "Do you want to copy '$context_file' to ~/.config/fabric/context? (y/n) " choice
    case "$choice" in 
      y|Y ) cp -R "$context_file" ~/.config/fabric/context;;
      * ) echo "Skipping '$context_file'";;
    esac
done

echo "Copied all the files. Running 'fabric -l' to check if they are available to use with fabric."
fabric -l