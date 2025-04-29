# Linux Tutorial Repository: Week 2

## Overview
This repository contains advanced Linux commands focused on package management, categorized for ease of learning and reference. Whether you're a beginner or an advanced user, this guide will help you understand and utilize Linux package management effectively.

> **Note:** The Week 2 contents are not completed yet and will continue to be updated with additional Linux commands and concepts.

## Table of Contents
- [File Operations](#file-operations)
- [Package Management](#package-management)
  - [System Information](#system-information)
  - [DPKG](#dpkg)
  - [APT](#apt)

---

## File Operations
- Rename a file:
  ```sh
  mv test.txt sample.txt
  ```
- Split a file into multiple parts:
  ```sh
  split -d -l2 sample.txt sample_
  ```
- Remove files using pattern matching with xargs:
  ```sh
  ls sample_* | xargs rm -f
  ```
- Remove files with specific pattern:
  ```sh
  ls sample_0? | xargs rm -f
  ```
- Remove files using shell expansion:
  ```sh
  rm -f $(ls sample_1?)
  ```

## Package Management

### System Information
- Display OS release information:
  ```sh
  cat /etc/os-release
  ```

### DPKG
DPKG is a package manager for Debian-based systems that handles the manual installation of packages.

- Download a package without installing:
  ```sh
  apt download vim
  ```
- Remove a package:
  ```sh
  sudo apt remove vim
  ```
- Remove automatically installed dependencies:
  ```sh
  sudo apt autoremove
  ```
- View contents of a .deb package:
  ```sh
  dpkg -c vim.deb
  ```
- List all installed packages:
  ```sh
  dpkg --get-selections
  ```
- Install a .deb package:
  ```sh
  dpkg -i vim.deb
  ```
- Repeat last command with sudo:
  ```sh
  sudo !!
  ```
- List all installed packages (short format):
  ```sh
  dpkg -l
  ```
- Show information about a specific package:
  ```sh
  dpkg -l vim
  ```
- List files installed by a package:
  ```sh
  dpkg -L vim
  ```
- Search for installed packages:
  ```sh
  dpkg -l | grep vim
  ```
- Completely remove a package and its configuration:
  ```sh
  sudo dpkg -P vim
  ```
- Remove a package but keep configuration:
  ```sh
  sudo dpkg -r vim
  ```
- Configure a package after installation:
  ```sh
  sudo dpkg --configure vim
  ```

### APT
APT is a higher-level package management system that handles dependencies automatically and works with repositories.

- Update package lists:
  ```sh
  sudo apt update
  ```
- Alternative update command:
  ```sh
  sudo apt-get update
  ```
- Upgrade all installed packages:
  ```sh
  sudo apt upgrade
  ```
- Search for packages:
  ```sh
  sudo apt search vim
  ```
- Search with pagination:
  ```sh
  sudo apt search vim | less
  ```
- Install a package:
  ```sh
  sudo apt install vim
  ```
- Remove multiple packages:
  ```sh
  sudo apt remove vim vim-runtime
  ```
- Clean up package cache:
  ```sh
  sudo apt autoclean
  ```
- Check for broken dependencies:
  ```sh
  sudo apt-get check
  ```
- Upgrade packages and handle dependencies:
  ```sh
  sudo apt-get dist-upgrade
  ```
- Alternative upgrade command:
  ```sh
  sudo apt-get upgrade
  ```
- Download package source code:
  ```sh
  sudo apt source vim
  ```

---

This guide provides an overview of essential Linux package management commands. For more details, refer to Linux documentation and manuals. Happy learning!