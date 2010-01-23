# Filename:      zlogin
# Purpose:       user .zlogin file for zsh(1)
# Authors:       Milan Santosi
# License:       This file is licensed under the GPL v2.
################################################################################
# This file is sourced only for login shells. It
# should contain commands that should be executed only
# in login shells. It should be used to set the terminal
# type and run a series of external commands (fortune,
# msgs, from, etc.)
# Note that using zprofile and zlogin, you are able to
# run commands for login shells before and after zshrc.
#
# Global Order: zshenv, zprofile, zshrc, zlogin
################################################################################


## CURSOR MOVEMENT

# Single char
bindkey "^[h" backward-char
bindkey "^[n" forward-char
bindkey "^[c" up-line-or-history
bindkey "^[t" down-line-or-history

# By Word
bindkey "^[g" emacs-backward-word
bindkey "^[r" emacs-forward-word

# Home and EOL
bindkey "^[d" beginning-of-line
bindkey "^[D" end-of-line

bindkey "^[e" backward-delete-char
bindkey "^[u" delete-char


# "^[e" was edit-command-line



## END OF FILE #################################################################
