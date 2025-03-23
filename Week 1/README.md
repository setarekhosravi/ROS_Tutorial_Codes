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
- Navigation:
  - Up: `k`, Down: `j`, Left: `h`, Right: `l`
- Copy/Paste:
  ```sh
  yy  # Copy
  p   # Paste
  dd  # Delete
  ```
- Append at the end of the line:
  ```sh
  Shift + A
  ```

---

This guide provides an overview of essential Linux commands. For more details, refer to Linux documentation and manuals. Happy learning!

