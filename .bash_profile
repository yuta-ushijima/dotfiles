eval "$(rbenv init -)"
export PATH="/usr/local/share/npm/bin:$PATH"
export PATH="$HOME/.rbenv/bin:$PATH"
export PATH=$HOME/.nodebrew/current/bin:$PATH
export PATH="/usr/local/opt/libxml2/bin:$PATH"

# alias
alias be='bundle exec'
alias bi='bundle install --path vendor/bundle --jobs=4'
alias ls='ls -G'
alias rs='be rails s -b 0.0.0.0'

# alias:cd
alias cdd='cd $HOME/Desktop'
alias cddown='cd $HOME/Downloads'
alias cdli='cd $HOME/git/like-slack'

# alias:git
alias g="git"
alias gs="git status"
alias ga="git add"
alias grb="git rebase"
alias gcm="git commit"
alias gb="git branch"
alias gbr="git branch -r"
alias gbg="git branch |grep"
alias gbrg="git branch -r |gpep"
alias gco="git checkout"
alias gcow="git checkout working"
alias gcod="git checkout development"
alias gcom="git checkout master"
alias gd="git diff"
alias gds="git diff --staged"
alias gpu="git push"
alias gpl="git pull"
alias gsh="git show"
alias gl="git log"

alias gfpu='git push -f'
