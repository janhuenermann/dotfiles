#!/bin/zsh
alias vim="nvim"

export JAN_CONFIG_DIR="$( cd "$( dirname "$0" )" && cd .. >/dev/null 2>&1 && pwd )"
export EDITOR=vim

# Inlcude some helpful functions
source $(dirname "$0")/common.bash

# Include some other variables
source $(dirname "$0")/config.bash