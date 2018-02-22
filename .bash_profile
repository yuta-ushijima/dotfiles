export RBENV_ROOT=$HOME/local/rbenv
export PATH=$RBENV_ROOT/bin:$HOME/local/bin:$PATH
eval "$(rbenv init -)"
export PATH="/usr/local/share/npm/bin:$PATH"
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
alias s="git status"
alias a="git add"
alias rb="git rebase"
alias cm="git commit"
alias b="git branch"
alias br="git branch -r"
alias bg="git branch |grep"
alias brg="git branch -r |gpep"
alias co="git checkout"
alias cow="git checkout working"
alias cod="git checkout development"
alias com="git checkout master"
alias d="git diff"
alias ds="git diff --staged"
alias push="git push origin HEAD"
alias pull="git pull origin HEAD"
alias show="git show"
alias l="git log"

alias fpush='git push -f origin HEAD'
export PATH=/Users/ushijimayuuta/.rbenv/bin:/usr/local/opt/libxml2/bin:/Users/ushijimayuuta/.nodebrew/current/bin:/Users/ushijimayuuta/dotfiles/.rbenv/bin:/usr/local/share/npm/bin:/Users/ushijimayuuta/.rbenv/shims:/Users/ushijimayuuta/.rbenv/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin
eval
eval 
eval 
eval export PATH="/Users/ushijimayuuta/.rbenv/shims:${PATH}"
export RBENV_SHELL=bash
source '/usr/local/Cellar/rbenv/1.1.1/libexec/../completions/rbenv.bash'
command rbenv rehash 2>/dev/null
rbenv() {
  local command
  command="$1"
  if [ "$#" -gt 0 ]; then
    shift
  fi

  case "$command" in
  rehash|shell)
    eval "$(rbenv "sh-$command" "$@")";;
  *)
    command rbenv "$command" "$@";;
  esac
}
export PATH=/Users/ushijimayuuta/.rbenv/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin
eval export PATH="/Users/ushijimayuuta/.rbenv/shims:${PATH}"
export RBENV_SHELL=bash
source '/usr/local/Cellar/rbenv/1.1.1/libexec/../completions/rbenv.bash'
command rbenv rehash 2>/dev/null
rbenv() {
  local command
  command="$1"
  if [ "$#" -gt 0 ]; then
    shift
  fi

  case "$command" in
  rehash|shell)
    eval "$(rbenv "sh-$command" "$@")";;
  *)
    command rbenv "$command" "$@";;
  esac
}
export PATH=/Users/ushijimayuuta/.rbenv/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin
eval export PATH="/Users/ushijimayuuta/.rbenv/shims:${PATH}"
export RBENV_SHELL=bash
source '/usr/local/Cellar/rbenv/1.1.1/libexec/../completions/rbenv.bash'
command rbenv rehash 2>/dev/null
rbenv() {
  local command
  command="$1"
  if [ "$#" -gt 0 ]; then
    shift
  fi

  case "$command" in
  rehash|shell)
    eval "$(rbenv "sh-$command" "$@")";;
  *)
    command rbenv "$command" "$@";;
  esac
}
export PATH=/Users/ushijimayuuta/.rbenv/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin
eval export PATH="/Users/ushijimayuuta/.rbenv/shims:${PATH}"
export RBENV_SHELL=bash
source '/usr/local/Cellar/rbenv/1.1.1/libexec/../completions/rbenv.bash'
command rbenv rehash 2>/dev/null
rbenv() {
  local command
  command="$1"
  if [ "$#" -gt 0 ]; then
    shift
  fi

  case "$command" in
  rehash|shell)
    eval "$(rbenv "sh-$command" "$@")";;
  *)
    command rbenv "$command" "$@";;
  esac
}
