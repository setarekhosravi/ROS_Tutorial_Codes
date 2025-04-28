# Linux Tutorial Repository: Week 1

## Overview
This repository contains a collection of essential Linux commands, categorized for ease of learning and reference. Whether you're a beginner or an advanced user, this guide will help you understand and utilize Linux effectively.

## Table of Contents
- [Basic Commands](#basic-commands)
- [Internal and External Commands](#internal-and-external-commands)
- [Environment Variables](#environment-variables)
- [Working with Files](#working-with-files)
- [Subshells](#subshells)
- [Command Manual and History](#command-manual-and-history)
- [Text Editors](#text-editors)
  - [Nano](#nano)
  - [Vim](#vim)
- [File Operations](#file-operations)
- [Text Processing](#text-processing)
  - [Grep](#grep)
  - [Redirection and Pipes](#redirection-and-pipes)
  - [Sed](#sed)

---

## Basic Commands
- Check symbolic link of `/bin/sh`:
  ```sh
  readlink /bin/sh
  ```
- Check default shell:
  ```sh
  echo $SHELL
  ```
- Display system information:
  ```sh
  uname
  uname -a
  ```
- Print text to terminal:
  ```sh
  echo "Hello World"
  ```
- List directory contents:
  ```sh
  ls
  ```
- Show current directory:
  ```sh
  pwd
  ```
- Create a new directory:
  ```sh
  mkdir <directory_name>
  ```

## Internal and External Commands
- Determine if a command is built-in or external:
  ```sh
  type <command>
  ```
  Example:
  ```sh
  type echo  # Built-in
  type uname  # External command (/usr/bin/uname)
  ```
- Execute external command directly:
  ```sh
  /usr/bin/uname -r
  ```

## Environment Variables
- Display the Bash version:
  ```sh
  bash --version
  echo $BASH_VERSION
  ```
- View history file path:
  ```sh
  echo $HISTFILE
  ```
- Check the number of stored history records:
  ```sh
  echo $HISTSIZE
  ```
- Display home directory:
  ```sh
  echo $HOME
  ```
- Show current prompt format:
  ```sh
  echo $PS1
  ```
- Print current directory:
  ```sh
  echo $PWD
  pwd
  ```
- Display shell level:
  ```sh
  echo $SHLVL
  ```
- Show system PATH variable:
  ```sh
  echo $PATH
  ```
- List all environment variables:
  ```sh
  export
  env
  ```

## Working with Files
- Create a variable and print it:
  ```sh
  age=2
  echo $age
  ```
- Write a command into a file:
  ```sh
  echo "import torch" > torch.py
  ```
- View file contents:
  ```sh
  cat torch.py
  ```
- Copy a file to the current directory:
  ```sh
  cp /etc/passwd .
  ```

## Subshells
- Open a new shell instance:
  ```sh
  bash
  ```
- Check shell level:
  ```sh
  echo $SHLVL
  ```
- Exit subshell:
  ```sh
  exit
  ```
- Define and remove variables:
  ```sh
  export name="Ali"
  echo $name
  unset name
  ```

## Command Manual and History
- Read command manual:
  ```sh
  man <command>
  ```
- Search for commands related to a keyword:
  ```sh
  man -k <keyword>
  ```
- View manual for a specific section:
  ```sh
  man -S 5 passwd
  ```
- Run the last command:
  ```sh
  !!
  ```
- Execute a specific command from history:
  ```sh
  !<line_number>
  ```

## Text Editors
### Nano
- `^` = Ctrl, `M` = Alt
- Open Nano:
  ```sh
  nano <filename>
  ```
- Save file: `Ctrl + O`
- Exit: `Ctrl + X`

### Vim
- Different modes:
  - `Esc`: Normal mode
  - `i`: Insert mode
- Save file:
  ```sh
  :w
  ```
- Quit Vim:
  ```sh
  :q
  ```
- Save and quit:
  ```sh
  :wq
  :x
  ```
- Force save and quit:
  ```sh
  :wq!
  ```
- Navigation:
  - Up: `k`, Down: `j`, Left: `h`, Right: `l`
- Copy/Paste:
  ```sh
  yy  # Copy line
  y+w # Copy word
  y+e # Copy word (to end)
  p   # Paste
  dd  # Delete line
  x   # Delete character
  ```
- Append at the end of the line:
  ```sh
  Shift + A
  ```
- Insert new line:
  ```sh
  o       # Insert new line below
  Shift+o # Insert new line above
  ```
- Undo/Redo:
  ```sh
  u         # Undo
  Ctrl + r  # Redo
  ```
- Execute commands:
  ```sh
  :!date    # Show date in command line
  :r!date   # Insert date in editor
  ```

## File Operations
- Concatenate files:
  ```sh
  cat file1.txt file2.txt
  ```
- Concatenate and save to a new file:
  ```sh
  cat file1.txt file2.txt > file3.txt
  ```
- Display file with syntax highlighting:
  ```sh
  batcat file1.txt
  ```
- Paste files side by side (column-wise):
  ```sh
  paste file1.txt file2.txt
  ```
- Show file in octal format:
  ```sh
  od file1.txt
  ```
- Display file with line numbers:
  ```sh
  cat -n file1.txt
  nl file1.txt
  ```
- Sort file content:
  ```sh
  sort -n file1.txt     # Numeric sort
  sort -nr file1.txt    # Reverse numeric sort
  ```
- View file content with pagination:
  ```sh
  less file1.txt
  ```
- Display first/last lines:
  ```sh
  head -n5 file1.txt    # First 5 lines
  tail -n5 file1.txt    # Last 5 lines
  tail -f file1.txt     # Follow file updates
  ```

## Text Processing
- Count lines, words, and characters:
  ```sh
  wc file1.txt
  ```
- Extract columns from delimited files:
  ```sh
  cut -d',' -f1 file1.txt    # First column of CSV
  ```
- Find unique lines:
  ```sh
  uniq file1.txt
  sort file1.txt | uniq      # Sort first for better results
  ```
- Calculate file checksums:
  ```sh
  md5sum file1.txt
  sha1sum file1.txt
  ```

### Grep
- Search for text in files:
  ```sh
  grep "Khoobi" file1.txt
  ```
- Show lines NOT containing pattern:
  ```sh
  grep -v "Khoobi" file1.txt
  ```
- Search with regular expressions:
  ```sh
  grep -E "^Salam" file1.txt    # Lines starting with "Salam"
  ```
- Count matching lines:
  ```sh
  grep -E -c "^Salam" file1.txt
  ```
- Case-insensitive search:
  ```sh
  grep -i kernel file1.txt
  ```
- Recursive search:
  ```sh
  grep -E -R "^Salam" *
  egrep -R "^Salam" *
  ```
- Skip directories:
  ```sh
  egrep -d skip "^Salam" *
  ```
- Recurse into directories:
  ```sh
  egrep -d recurse "^Salam" *
  ```

### Redirection and Pipes
- Redirect output to file:
  ```sh
  ls > output.txt
  ```
- Redirect error output:
  ```sh
  ls nonexistent 2> error.txt
  ```
- Redirect both standard and error output:
  ```sh
  ls nonexistent &> all_output.txt
  ```
- Append to file:
  ```sh
  ls &>> output.txt
  ```
- Use file as input:
  ```sh
  cat < file1.txt > file2.txt
  ```
- Pipe commands:
  ```sh
  wc -l *.txt | sort -n
  wc -l *.txt | sort -n | head -n5
  ```

### Sed
- Replace first occurrence:
  ```sh
  sed 's/pattern/replacement/' file.txt
  ```
- Replace all occurrences:
  ```sh
  sed 's/pattern/replacement/g' file.txt
  ```
- Case-insensitive replacement:
  ```sh
  sed 's/pattern/replacement/gi' file.txt
  ```
- Use regular expressions:
  ```sh
  sed -r 's/patt.?rn/replacement/gi' file.txt
  ```
- Multiple replacements:
  ```sh
  sed -e 's/pattern1/replacement1/gi' -e 's/pattern2/replacement2/' file.txt
  ```

---

This guide provides an overview of essential Linux commands. For more details, refer to Linux documentation and manuals. Happy learning!
