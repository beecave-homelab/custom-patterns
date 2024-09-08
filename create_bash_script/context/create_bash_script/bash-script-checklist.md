# Bash Scripting Checklist

## Script Structure

1. **Script Metadata and Constants**:
   - Set script metadata including author, version, creation date, and default constants like output file path and any other relevant default values.

2. **ASCII Art Function**:
   - The `print_ascii_art` function allows for a customizable ASCII art header. Modify or remove as needed.

3. **Help Function**:
   - The `show_help` function provides usage instructions and options, making the script user-friendly.

4. **Error Handling Function**:
   - The `error_exit` function ensures consistent and informative error handling.

5. **Main Logic Function**:
   - `main_logic` function is a placeholder for the main script functionality. Customize this function based on the specific needs of your future projects.

6. **Main Function**:
   - Encapsulates script logic, parsing command-line arguments, validating inputs, and executing core functions.
   - Ensures that either text or file input is provided.

7. **Execution**:
   - The script concludes by printing ASCII art and executing the `main` function with all passed arguments.


## Bash Script Coding Standards

1. **Interpreter and Shell Options**
   - [ ] Ensure scripts start with `#!/bin/bash`.
   - [ ] Use `set` to set shell options so the script runs as intended with `bash script_name`.
2. **File Extensions and Permissions**
   - [ ] Executable scripts: No extension or `.sh` if necessary.
   - [ ] Libraries: Must have a `.sh` extension and not be executable.
   - [ ] Do not use SUID/SGID on scripts. Use `sudo` for elevated access if needed.
3. **Comments and Documentation**
   - [ ] Start each file with a top-level comment describing its contents.
   - [ ] Include function header comments for all non-obvious or long functions.
     - [ ] Describe the function, globals, arguments, outputs, and return values.
   - [ ] Add TODO comments with the format `TODO(name): description`.
4. **Formatting**
   - [ ] Indent with 2 spaces, no tabs.
   - [ ] Use blank lines between blocks of code.
   - [ ] Limit line length to 80 characters.
   - [ ] Split long pipelines one per line, using `\` for continuation.
   - [ ] Place `; then` and `; do` on the same line as `if`, `for`, `while`, etc.
   - [ ] Indent case statement alternatives by 2 spaces.
   - [ ] Follow consistent variable expansion and quoting practices.
     - [ ] Prefer `${var}` over `$var`.
     - [ ] Always quote strings containing variables, command substitutions, spaces, or shell meta characters.
5. **Error Handling**
   - [ ] Direct all error messages to `STDERR`.
   - [ ] Check return values of commands, use `$?` or `if` statements for checks.
   - [ ] Use `PIPESTATUS` to check the return values of all commands in a pipeline.
6. **Command Substitution**
   - [ ] Use `$(command)` instead of backticks for command substitution.
7. **Control Flow and Logic**
   - [ ] Prefer `[[ ... ]]` over `[ ... ]`, `test`, and `/usr/bin/[`.
   - [ ] Use `-z` for checking empty strings and `-n` for non-empty strings.
   - [ ] Use `==` for string comparison in `[[ ... ]]`.
8. **Variable and Function Naming**
   - [ ] Use lowercase with underscores for function and variable names.
   - [ ] Constants and environment variables: Capitalized with underscores.
   - [ ] Declare variables as `local` within functions.
9. **Arrays and Iteration**
   - [ ] Use arrays for lists of elements, especially for command-line flags.
   - [ ] Use process substitution or `readarray` for piping to `while` to avoid subshell issues.
10. **Arithmetic**
    - [ ] Use `(( ... ))` or `$(( ... ))` for arithmetic operations.
    - [ ] Avoid using `let`, `$[ ... ]`, or `expr`.
11. **Avoid Using Aliases**
    - [ ] Prefer functions over aliases for script commands.
12. **Consistency**
    - [ ] Ensure consistency with existing code styles in the project.