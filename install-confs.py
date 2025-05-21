#!/usr/bin/env python3
import os


def getBashConfs():
    return [".bash_aliases"]


def getConfs():
    conf = getBashConfs()
    conf.extend([".tmux.conf", ".vimrc"])
    return conf


def homeDir():
    return os.path.expanduser("~")


def makeConfLinks():
    scriptDir = os.path.dirname(os.path.abspath(__file__))
    home = homeDir()

    print("1. Make symbolic links to confs.")
    for conf in getConfs():
        confInHome = os.path.join(home, conf)

        if os.path.isfile(confInHome):
            replace = input(
                "{} exists in your home directory. Replace it? (y/N) ".format(conf)
            )
            if "y" != replace.lower():
                continue
            os.remove(confInHome)

        print("Making a symbolic link of {} into your home directory...".format(conf))
        os.symlink(os.path.join(scriptDir, conf), confInHome)


def sourceConfsInBashrc():
    bashrcPath = os.path.join(homeDir(), ".bashrc")

    print("2. Source confs in .bashrc.")
    for conf in getBashConfs():
        doSource = input("Source {} in .bashrc? (y/N) ".format(conf))
        if "y" != doSource.lower():
            continue

        with open(bashrcPath, "a") as bashrc:
            bashrc.write("if [ -f ~/{} ]; then\n".format(conf))
            bashrc.write("  . ~/{}\n".format(conf))
            bashrc.write("fi\n")


def main():
    makeConfLinks()
    sourceConfsInBashrc()


if __name__ == "__main__":
    main()
