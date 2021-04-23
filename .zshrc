HISTFILE=/dev/null

## Variables
export BROWSER="firefox"
export EDITOR="emacsclient -n"
export PATH="/usr/local/bin:$PATH"

## Keybindings
bindkey -e
typeset -g -A key
bindkey '\e[3~' delete-char
bindkey '\e[2~' overwrite-mode
bindkey '^?' backward-delete-char
bindkey '^[[5~' up-line-or-history
bindkey '^[[3~' delete-char
bindkey '^[[6~' down-line-or-history
bindkey '^[[A' up-line-or-search
bindkey '^[[D' backward-char
bindkey '^[[B' down-line-or-search
bindkey '^[[C' forward-char
bindkey '^[[Z' reverse-menu-complete

## for gnome-terminal
#bindkey  "^[[H"   beginning-of-line
#bindkey  "^[[F"   end-of-line

## for urxvt
bindkey "\e[8~" end-of-line
bindkey "\e[7~" beginning-of-line

## Alias stuff
alias lls="ls --color -lha --group-directories-first"
alias ls="ls -a --color --group-directories-first"
alias spm="sudo pacman"
alias feh="feh -."
alias sctl="systemctl"
alias jctl="journalctl"
alias e="emacsclient -t"
alias ee="emacsclient -n"

# Comp stuff
zmodload zsh/complist
autoload -Uz compinit
compinit
zstyle :compinstall filename '${HOME}/.zshrc'

#- buggy
zstyle ':completion:*:descriptions' format '%U%B%d%b%u'
zstyle ':completion:*:warnings' format '%BSorry, no matches for: %d%b'
#-/buggy

zstyle ':completion:*:pacman:*' force-list always
zstyle ':completion:*:*:pacman:*' menu yes select

zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}

zstyle ':completion:*:*:kill:*' menu yes select
zstyle ':completion:*:kill:*'   force-list always

zstyle ':completion:*:*:killall:*' menu yes select
zstyle ':completion:*:killall:*'   force-list always

#- complete pacman-color the same as pacman
compdef _pacman pacman-color=pacman

# Prompt
autoload -U colors zsh/terminfo
colors

setprompt() {
  setopt prompt_subst

  export PROMPT='%F{blue}[%~]%f%F{green}$%f '
  export RPROMPT=''
}

setprompt
typeset -A key
