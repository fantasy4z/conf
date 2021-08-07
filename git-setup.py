#!/usr/bin/env python3
import shutil
import subprocess
import sys

gitConfigs =[
    ['alias.br', 'branch'],
    ['alias.co', 'checkout'],
    ['alias.d', 'difftool'],
    ['alias.st', 'status'],
    ['alias.logg', 'log --all --decorate --oneline --graph'],
    ['core.editor', 'vim'],
    ['diff.tool', 'vimdiff'],
    ['difftool.prompt', 'false'],
    ['push.default', 'simple'],
    ['user.name', 'Guang-De Lin'],
    ['user.email', 'fs.in.nccu@gmail.com'],
]

def main():
    if shutil.which('git') is None:
        print("Cannot locate git executable.")
        sys.exit(1)

    print("Setup git configs")
    for config in gitConfigs:
        callArgs = ['git', 'config', '--global']
        callArgs.extend(config)
        subprocess.call(callArgs)

if __name__ == '__main__':
    main()

