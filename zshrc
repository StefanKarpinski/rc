## run for all zsh interactive shells
test -n "$VERBOSE" && echo $HOME/rc/zshrc... 1>&2

### setup the keyboard bindings ###

bindkey -e
bindkey "^[[2~" yank
bindkey "^[[4~" end-of-line
bindkey "^[[3~" delete-char
bindkey "^[[1~" beginning-of-line
bindkey "^[[5~" up-line-or-history
bindkey "^[[6~" down-line-or-history

### configure history ###

setopt share_history
setopt hist_reduce_blanks
setopt no_extended_history
setopt hist_ignore_all_dups

### completion options ###

setopt no_beep
setopt auto_menu
setopt list_packed
setopt list_ambiguous
setopt complete_in_word

### completion zstyle stuff ###

autoload -U compinit
compinit -u
zmodload -ui complist
zmodload -i zsh/complist
zstyle ':completion:*' max-errors 1
zstyle ':completion:*' menu select=1
zstyle ':completion:*' completer _complete _correct _approximate

### miscellaneous options and environment stuff ###

setopt nohup
setopt multios
setopt correct
setopt auto_pushd
setopt pushd_minus
setopt pushd_ignore_dups
setopt auto_resume
setopt no_no_match
setopt short_loops
setopt extended_glob
setopt function_argzero
setopt numeric_glob_sort

### miscellaneous stuff ###

ttyctl -f

### source the appropriate files ###

unalias -m \*
rc-source aliases zaliases functions zfunctions zprompt local cleanup
ssh-auth-sock-acquire-or-start
