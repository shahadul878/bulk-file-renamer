# Batch Rename Script

Batch Rename Script is a Bash tool that facilitates the bulk renaming of files and directories within a specified directory. It allows users to search for a particular string and replace it with another, streamlining the renaming process.

## Table of Contents

- [Features](#features)
- [Usage](#usage)
- [Example](#example)
- [Installation](#installation)
- [Contributing](#contributing)
- [License](#license)

## Features

- **User-Friendly:** Simple command-line interface with interactive prompts for directory, search string, and replace string.
- **Recursive Search:** Recursively searches through files and subdirectories within the specified directory.
- **Safe Renaming:** Utilizes the `find` command and `sed` for safe and efficient batch renaming.

## Usage

1. Make the script executable:

   ```bash
   chmod +x batch_rename.sh
   ```
2. Run the script:

   ```bash
   ./batch_rename.sh
   ``` 
