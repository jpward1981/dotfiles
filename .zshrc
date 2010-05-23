# Options for Zsh
export HISTFILE=~/.zsh_history
export HISTSIZE=50000
export SAVEHIST=50000
eval `dircolors -b`

autoload -U compinit promptinit
compinit
promptinit

zstyle ':completion:*' accept-exact '*(N)'
zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path ~/.zsh/cache

#LS Color Completion
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}

# tab completion for PID :D
zstyle ':completion:*:*:kill:*' menu yes select
zstyle ':completion:*:kill:*' force-list always

# cd not select parent dir
zstyle ':completion:*:cd:*' ignore-parents parent pwd

#Comletion Style Improvments
zstyle ':completion:*:descriptions' format '%U%B%d%b%u'
zstyle ':completion:*:warnings' format '%BSorry, no matches for: %d%b'

#History
setopt hist_ignore_all_dups
setopt hist_ignore_space
 
setopt autocd  #If path is not a command, then cd instead
setopt extendedglob

setopt correct #Attempts to correct commands
setopt dvorak  #Corrects commands based on dvorak layout

export PS1=$'%{\e[01;34m%}%n%{\e[00;34m%}@%m%{\e[00m%}: %{\e[00m%}'
export PS2="$(print '%{\e[0;34m%}>%{\e[0m%}')"

RPROMPT='%F{green}%~%f'
RPROMPT2=''
export RPS1='%F{green}%~%f'
export RPS2=''

case $TERM in
    xterm*)
        precmd () {print -Pn "\e]0;%n@%m: %~\a"}
        ;;
esac

# key bindings
bindkey "\e[1~" beginning-of-line
bindkey "\e[4~" end-of-line
bindkey "\e[5~" beginning-of-history
bindkey "\e[6~" end-of-history
bindkey "\e[3~" delete-char
bindkey "\e[2~" quoted-insert
bindkey "\e[5C" forward-word
bindkey "\eOc" emacs-forward-word
bindkey "\e[5D" backward-word
bindkey "\eOd" emacs-backward-word
bindkey "\e\e[C" forward-word
bindkey "\e\e[D" backward-word
bindkey "^H" backward-delete-word
# for rxvt
bindkey "\e[8~" end-of-line
bindkey "\e[7~" beginning-of-line
# for non RH/Debian xterm, can't hurt for RH/DEbian xterm
bindkey "\eOH" beginning-of-line
bindkey "\eOF" end-of-line
# for freebsd console
bindkey "\e[H" beginning-of-line
bindkey "\e[F" end-of-line
# completion in the middle of a line
bindkey '^i' expand-or-complete-prefix


alias ls='ls --group-directories-first --color=auto'
alias irssi='echo -n "\033]2;irssi\007"; irssi'

export LESS_TERMCAP_mb=$'\E[01;31m'
export LESS_TERMCAP_md=$'\E[01;31m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;44;33m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;32m'

export OOO_FORCE_DESKTOP=gnome

export GREP_COLOR="1;33"
alias grep='grep --color=auto'

export EDITOR=vim

alias zipspace="sudo mount -t davfs https://gozips.uakron.edu/msg31 /home/pyther/zipspace -o uid=pyther,gid=users"
alias uzipspace="sudo umount /home/pyther/zipspace"
alias scpresume="rsync --partial --progress --rsh='ssh'"
alias sync_music="rsync -avz --delete --progress /data/Music/ /mnt/mongo/pyther/Music"
alias slurpy="slurpy -c"
alias icytower="wine ~/.wine/drive_c/games/icytower1.4/icytower14.exe"
