
export PATH="$HOME/.gem/ruby/2.0.0/bin:$PATH"
export PATH="$HOME/.gem/ruby/2.0.0/bin:$PATH"

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# Source git completion
if [ -f ~/.git-completion.bash ]; then
    . ~/.git-completion.bash
fi

# 現在のブランチ名を表示する設定
if [ -f ~/.git-prompt.sh ]; then
    # リポジトリの状態によって表示が変わる設定を有効にする
    GIT_PS1_SHOWDIRTYSTATE=1
    . ~/.git-prompt.sh
    PS1='\[\e[32m\][\u@\h \W]\e[m $(__git_ps1 "\e[36;1m\](\[\e[36;1m\]%s)")\[\e[0m\]\] \$ '
fi
