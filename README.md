# dotfiles

This repository contains my personal configuration files (dotfiles) for various programs. The dotfiles are organized using [GNU Stow](https://www.gnu.org/software/stow/), which allows for easy management and symlink creation.

## Prerequisites

Before proceeding, make sure you have the following installed:

- **GNU Stow**: This will handle symlink management.
  
  You can install Stow on your system using:

  ```bash
  sudo apt install stow
  ```

# Installation

1. Clone the repository:

```bash
git clone https://github.com/ojpro/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
```

2. Use Stow to manage dotfiles:
```bash
stow .
```
