if echo $PATH | awk "/:?$(echo "${HOME}/bin" | sed 's;/;\\/;g'):?/" &> /dev/null; then
    PATH="${PATH}:${HOME}/bin"
fi

# Prompt
#PS1="[\u\[\033[0;34m\]@\h \[\033[1;32m\]\W\[\033[00m\]]\$ "
PS1='\[\033[1;34m\]\h:\[\033[1;32m\]\W\[\033[1;34m\] $\[\e[0m\] '
PS2='> \[\e[1;34m\]\$\[\e[0m\] '

# X Terminal titles
case "$TERM" in
xterm*|rxvt*)
        PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME}: ${PWD}\007"'
        ;;
*)
        ;;
esac

# Shell options
shopt -s cdspell        # Correct cd typos
shopt -s checkwinsize   # Update $LINES and $COLUMNS after resizes

. /etc/bash_completion

alias ls='ls --group-directories-first --color=auto'
eval `dircolors -b`

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
alias sync_music="rsync -avz --delete --progress /data/Music/ /mongo/pyther/Music"
alias steam="wine /home/pyther/.wine/drive_c/Program\ Files/Steam/Steam.exe"

export WINEARCH=win32
