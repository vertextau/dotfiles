## History stuff
HISTFILE=/dev/null

## Variables
export BROWSER="chromium"
export EDITOR="emacsclient -t"
export QT_QPA_PLATFORMTHEME="qt5ct"
export PATH=$HOME/.local/bin:$PATH

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
alias ls="ls --color"
alias spm="sudo pacman"
alias feh="feh -."
alias sctl="systemctl"
alias jctl="journalctl"
alias e="emacs -nw"

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

autoload -Uz vcs_info
zstyle ':vcs_info:*' enable git hg
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:git*' formats "%{${fg[cyan]}%}[%{${fg[green]}%}%s%{${fg[cyan]}%}][%{${fg[blue]}%}%r/%S%%{${fg[cyan]}%}][%{${fg[blue]}%}%b%{${fg[yellow]}%}%m%u%c%{${fg[cyan]}%}]%{$reset_color%}"

setprompt() {
  setopt prompt_subst

  if [[ -n "$SSH_CLIENT"  ||  -n "$SSH2_CLIENT" ]]; then
    p_host='%F{yellow}%M%f'
  else
    p_host='%F{green}%M%f'
  fi

export PROMPT='%F{blue}[%~]%f%F{green}$%f '
export RPROMPT=''
}
setprompt
typeset -A key
