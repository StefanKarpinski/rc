## run for bash non-login shells
test -n "$VERBOSE" && echo bashrc... 1>&2

source "$HOME/rc/utils"
unalias -a
rc-source aliases functions prompt
