#!/bin/bash

install_tools_by_apt() {
  echo "Install tools by apt"

  # My python scripts are based on python3, while autojump is based on python.
  sudo apt-get update && sudo apt-get install -y \
      git \
      python \
      python3 \
      vim \
      tmux
}

install_bash_it() {
  git clone --depth=1 https://github.com/Bash-it/bash-it.git ~/.bash_it
  ~/.bash_it/install.sh
}

install_autojump() {
  git clone https://github.com/wting/autojump.git /tmp/autojump
  cd /tmp/autojump && ./install.py && cd -
}

main() {
  echo "Start installing confs on Ubuntu"

  install_tools_by_apt
  ./install-confs.py
  ./git-setup.py

  install_bash_it
  install_autojump

  echo "Finished installing confs on Ubuntu."
}

main "$@"
