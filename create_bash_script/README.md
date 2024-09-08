# create_bash_script

This is a tool that creates a bash script based on the user's prompt.

## Usage

Add the `bash-script-template.md` and `bash-script-checklist.md` to ~/.config/fabric/contexts/create_bash_script
```bash
cp -r context/create_bash_script ~/.config/fabric/contexts/create_bash_script
```

Run the tool with Fabric

```bash
fabric -s -p create_bash_script --context create_bash_script
```