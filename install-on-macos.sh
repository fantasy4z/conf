#!/bin/bash
#
# Install tools and configs on macOS.
#

. ./install-bash-it.sh

main() {
  echo "Start installing on macOS..."

  ./install-confs.py
  ./git-setup.py

  install_bash_it

  echo "Finished installing on macOS."
  echo "Remeber to source ~/.bashrc in ~/.bash_profile."
}

main "$@"