#!/bin/bash

#######################################
# Install bash-it.
# Prerequisites:
#   git
# Arguments:
#   None
#######################################
install_bash_it() {
  git clone --depth=1 https://github.com/Bash-it/bash-it.git ~/.bash_it
  ~/.bash_it/install.sh

  echo "Edit your modified config (~/.bash_profile or ~/.bashrc) file in order to customize Bash-it."
}
