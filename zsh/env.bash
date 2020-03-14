#!/bin/zsh
alias vim="nvim"
export EDITOR=vim

# Inlcude some helpful functions
source $(dirname "$0")/common.bash

# Include some other variables
source $(dirname "$0")/config.bash