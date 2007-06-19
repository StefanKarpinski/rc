## run first for all zsh shells
test -n "$VERBOSE" && echo $HOME/rc/zshenv... 1>&2

source "$HOME/rc/utils"
rc-source env zenv
setopt no_global_rcs # don't source /etc/zprofile, etc.
