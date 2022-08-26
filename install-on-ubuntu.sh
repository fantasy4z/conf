#!/bin/bash

. ./install-bash-it.sh

install_tools_by_apt() {
  echo "Install tools by apt"

  # My python scripts are based on python3.
  sudo apt-get update && sudo apt-get install -y \
      git \
      python3 \
      vim \
      tmux
}

main() {
  echo "Start installing confs on Ubuntu"

  install_tools_by_apt
  ./install-confs.py
  ./git-setup.py

  install_bash_it

  echo "Finished installing confs on Ubuntu."
}

main "$@"
