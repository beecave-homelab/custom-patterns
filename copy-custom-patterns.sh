#!/bin/bash

for item in ./*/; do
    read -p "Do you want to copy '$item' to ~/.config/fabric/patterns? (y/n) " choice
    case "$choice" in 
      y|Y ) cp -R "$item" ~/.config/fabric/patterns;;
      * ) echo "Skipping '$item'";;
    esac
done
echo "Copied all the files. Running 'fabric -l' to check if they are avaliable to use with fabric."
fabric -l