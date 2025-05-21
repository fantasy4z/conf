#!/bin/bash

# Unix commands
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# kubectl
alias kubeccc='kubectl config current-context'
alias kubecuc='kubectl config use-context'
alias kubecgc='kubectl config get-contexts'
alias kubegn='kubectl get nodes -o wide -L beta.kubernetes.io/instance-type'
