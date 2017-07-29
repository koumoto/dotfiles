export LANG=ja_JP/UTF-8
autoload -Uz colors
colors
bindkey -e
HISTFILE=~/.zsh_history
HISTSIZE=1000000
SAVEHIST=1000000
PROMPT="%{${fg[green]}%}[%n@%m]%{${reset_color}%} %~
%# "

autoload -Uz select-word-style
select-word-style default

autoload -Uz compinit
compinit

zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
zstyle ':completion:*:sudo:*' command-path /usr/local/sbin /usr/local/bin \
                   /usr/sbin /usr/bin /sbin /bin /usr/X11R6/bin
zstyle ':completion:*:processes' command 'ps x -o pid,s,args'
setopt hist_ignore_all_dups
setopt hist_reduce_blanks
alias la='ls -a'
alias ll='ls -la'

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

alias mkdir='mkdir -p'
alias sudo='sudo '
alias -g L='| less'
alias -g G='| grep'
alias ls='ls -F --color=auto'
