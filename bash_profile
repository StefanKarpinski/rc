## run for bash login shells
test -n "$VERBOSE" && echo bash_profile... 1>&2

source "$HOME/rc/utils"
rc-source env bashrc local
