#!/bin/bash

PS1="\[\e]0;\u@\h: \w\a\]${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@ubuntulocal\[\033[00m\]:\w\[\033[01;34m\]\[\033[00m\]\$ "

