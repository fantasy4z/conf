# conf

Scripts to install tools and my config files.

This repository contains a set of scripts to automate the setup of a development environment. These scripts will:
- Install common development tools (like git, python3, vim, tmux).
- Set up personal configuration files for bash, tmux, and vim using `install-confs.py`. This includes files like `.bash_aliases`, `.tmux.conf`, and `.vimrc`.
- Configure git using `git-setup.py`.
- Install Bash It via the `install-bash-it.sh` script to enhance your shell experience.

## Getting Started

To set up your environment, run the script corresponding to your operating system:

```bash
# For Ubuntu
./install-on-ubuntu.sh

# For macOS
./install-on-macos.sh
```

These main scripts will orchestrate the execution of the other setup scripts (`install-confs.py`, `git-setup.py`, `install-bash-it.sh`) as needed.
