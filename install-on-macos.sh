#!/bin/bash
#
# Install tools and configs on macOS.
#

. ./install-bash-it.sh

install_autojump_on_macos() {
  brew install autojump
  echo "Remember to include the following lines to ~/.bash_rc:"
  echo "[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh"
}

main() {
  echo "Start installing on macOS..."

  ./install-confs.py
  ./git-setup.py

  install_bash_it
  install_autojump_on_macos

  echo "Finished installing on macOS."
  echo "Remeber to source ~/.bashrc in ~/.bash_profile."
}

main "$@"