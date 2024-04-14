
# Chapter 09 VIM Text Editor

## Introduction

VIM (Vi IMproved) is not just an editor but a way of life for many developers and sysadmins. It's built on the foundation of the original Vi editor but includes additional features to enhance productivity. Learning VIM can seem daunting at first due to its modal nature and multitude of commands, but it rewards users with powerful capabilities once mastered.

## Getting Started with VIM

### Basic Commands

When you open a file with VIM, you start in "normal" mode, where you can execute commands to navigate and manipulate text. Here’s how you can perform basic operations:

- **Enter Insert Mode**: `i` (insert before the cursor), `I` (insert at the beginning of the line), `a` (append after the cursor), `A` (append at the end of the line)
- **Exit Insert Mode**: Press `Esc` to return to normal mode.
- **Save Changes**: In normal mode, type `:w` followed by Enter.
- **Exit VIM**: Type `:q` and press Enter. Combine saving and exiting with `:wq` or `ZZ`.
- **Open a File**: From normal mode, type `:e filename`.

### Navigation Tips

Efficient navigation is one of the keystones of VIM:

- **By Characters**: `h`, `j`, `k`, `l` for left, down, up, right respectively
- **By Words**: `w` for start of next word, `b` for start of previous word, `e` for end of current word
- **By Lines**: `^` for the first non-blank character, `0` for the very start, `$` for the end
- **By Screens**: `Ctrl + f` (forward one screen), `Ctrl + b` (back one screen)
- **By Matching Parenthesis**: `%` when the cursor is on a parenthesis or bracket

### Editing Commands

VIM excels with its editing commands that work in normal mode:

- **Delete (Cut)**: `x` deletes the character under the cursor, `dw` deletes from the cursor to the end of the word, `dd` deletes the whole line.
- **Copy (Yank)**: `yy` copies the current line, `yw` copies from the cursor to the end of the word.
- **Paste (Put)**: `p` pastes after the cursor or line, `P` pastes before.
- **Replace a Character**: `r` followed by the character to replace the one under the cursor.

### Advanced Features

- **Visual Mode**: Enter visual mode by pressing `v`, select text, and execute commands like `d` to delete or `y` to copy.
- **Command-Line Mode**: Access by pressing `:` in normal mode, useful for running commands like `:sort` to sort lines or `:%s/old/new/g` to replace text throughout the file.

### Customization and Plugins

Customizing VIM can significantly improve its functionality:

- **Basic `.vimrc` Customizations**:
  ```vim
  set number            " Show line numbers
  set ignorecase        " Case insensitive searching
  set smartcase         " Case sensitive if search includes uppercase
  set expandtab         " Convert tabs to spaces
  set tabstop=4         " Number of spaces tabs count for
  ```

- **Useful Plugins**:
  - **NERDTree**: A file system explorer for the VIM editor.
  - **Vim-airline**: Lean & mean status/tabline for VIM that's light as air.
  - **Syntastic**: Syntax checking plugin for VIM.

## Conclusion

VIM is more than a text editor; it's a powerful tool for those who invest the time to learn it. Whether you’re editing configuration files, writing code, or jotting down notes, VIM provides a streamlined interface for efficient text manipulation.
