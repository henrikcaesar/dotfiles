# -*- mode: sh -*-

##################################################
# General
##################################################

# Functions for modifying $PATH
path_append ()  { path_remove $1; export PATH="$PATH:$1"; }
path_prepend () { path_remove $1; export PATH="$1:$PATH"; }
path_remove ()  { export PATH=`echo -n $PATH | awk -v RS=: -v ORS=: '$0 != "'$1'"' | sed 's/:$//'`; }

##################################################
# Emacs
##################################################

# Bug in emacs, remove when emacs is updated to 24.4+
# https://bugs.launchpad.net/emacs-snapshot/+bug/1251176
alias emacs="XMODIFIERS='' emacs"
