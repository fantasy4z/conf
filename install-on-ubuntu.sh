#!/bin/bash

install_tools_by_apt() {
  echo "Install tools by apt"
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

  echo "Finished installing confs on Ubuntu."
}

main "$@"
