
alias emacs="emacsclient -c -a 'emacs'"
alias ll='ls -alF --color=auto'
alias la='ls -A --color=auto'
alias l='ls -CF --color=auto'

alias git-pull-all='find . -type d -name .git -exec sh -c "cd \"{}\"/../ && pwd && git pull" \;'

alias cal='ncal -wb'

alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
