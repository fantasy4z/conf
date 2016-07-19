#!/usr/bin/env python
import os
import subprocess

gitConfigs =[
    ['alias.br', 'branch'],
    ['alias.co', 'checkout'],
    ['alias.d', 'difftool'],
    ['alias.st', 'status'],
    ['core.editor', 'vim'],
    ['diff.tool', 'vimdiff'],
    ['difftool.prompt', 'false'],
    ['push.default', 'simple'],
    ['user.name', 'Guang-De Lin'],
    ['user.email', 'fs.in.nccu@gmail.com'],
]

def main():
    devNull = open(os.devnull, 'w')
    ret = subprocess.call(['which', 'git'], stdout = devNull, stderr = subprocess.STDOUT)
    devNull.close()
    if ret != 0:
        print("Cannot locate git executable.")
        return 1

    for config in gitConfigs:
        callArgs = ['git', 'config', '--global']
        callArgs.extend(config)
        subprocess.call(callArgs)

if __name__ == '__main__':
    main()

