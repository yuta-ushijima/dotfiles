export HOMEBREW_GITHUB_API_TOKEN=7e87b36e44858d6391bc2c1952895042d9a240f9
export PATH=$HOME/.nodebrew/current/bin:$PATH
eval "$(rbenv init -)"
export GOPATH=$HOME/.go
export HOMEBREW_CASK_OPTS="--appdir=/Applications"


if [ $UID -eq 0 ]; then
    PS1="\[\033[31m\]\u@\h\[\033[00m\]:\[\033[01m\]\w\[\033[00m\]\\$ "
else
    PS1="\[\033[36m\]\u@\h\[\033[00m\]:\[\033[01m\]\w\[\033[00m\]\\$ "
fi

# lsコマンドの設定(ディレクトリに色と/をつける)
alias ls='ls -FG'
alias ll='ls -alFG'

# alias:cd
alias cdd='cd $HOME/Desktop'
alias cdmtd='cd $HOME/git/sakura-master-data'

# alias:git
alias g="git "
alias gs="git status "
alias ga="git add "
alias grb="git rebase "
alias gcm="git commit "
alias gb="git branch "
alias gbr="git branch -r "
alias gbg="git branch |grep "
alias gbrg="git branch -r |gpep "
alias gco="git checkout "
alias gcow="git checkout working "
alias gcod="git checkout development "
alias gcom="git checkout master "
alias gd="git diff "
alias gds="git diff --staged "
alias gpush="git push origin HEAD "
alias gpull="git pull origin HEAD "

alias gsh="git show "
alias gl="git log "
alias gpl="git pull "
alias gfpu="git push -f "
alias gpu="git push "
# TEST
git config --global alias.co checkout

# alias:ls
alias ls='ls -l'

# alias:clear
alias clear='printf "\e[H\e[2J"'

#branch名のタブ補完
source ~/.git-completion.bash
