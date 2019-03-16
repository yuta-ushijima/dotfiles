#!/bin/sh
set -e

read -p "Homebrewをインストールしますか？ (y/n)" install < /dev/tty
case ${install} in
  y|Y) 

    echo "Start Install Homebrew..."

    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

    echo "Install Homebrew is Complete!" ;;

esac


read -p "ログインシェルをzshに変更しますか？ (y/n)" setting < /dev/tty
case ${setting} in
  y|Y)
    echo "=================="
    echo "現在のzshのPATH: $(which zsh)"
    echo "=================="
    
    echo "=================="
    echo "現在のzshのバージョン: $(/bin/zsh --version)"
    echo "=================="

    echo "=================="
    echo "Homebrewでインストールできるzshのバージョン: $(brew info zsh)"
    echo "=================="

    read -p "このままzshをインストールしていいですか？ (y/n)" yes < /dev/tty
    case $yes in
      y|Y) brew install zsh ;;
    esac
    
    echo "=================="
    echo "現在のzshのPATH: $(which zsh)"
    echo "=================="

    echo "=================="
    echo "現在のzshのバージョン: $(/usr/local/bin/zsh --version)"
    echo "==================" 

    FILE="~/.bash_profile"

    if [[ -e ${FILE} ]]; then
      source ${FILE} >> ~/.zshrc
    elif [[! -e ${FILE} ]]; then
      touch ${FILE}
    fi

    source ~/.zshrc
 
    echo "zshをインストールしました。
         .zshrcでexport PATH=$HOME/bin:/usr/local/bin:$PATHをコメントアウトしてください。" ;;
esac

read -p "oh my zshをインストールしますか？ (y/n)" ok < /dev/tty
case ${ok} in
  y|Y) curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh ;;
esac

read -p "ITerm2をインストールしますか？ (y/n)" ok < /dev/tty
case ${ok} in
  y|Y) brew cask install iterm2 ;;
esac

read -p "zshにrbenv/ruby-buildをインストールしますか？ (y/n)" ok < /dev/tty
case ${ok} in
 y|Y) brew update
      brew install rbenv ruby-build
      echo 'eval "$(rbenv init -)"' >> ~/.zshrc
      source ~/.zshrc
     
      echo "rbenvとruby-buildをインストールしました。"
      
      echo "=================="
      echo "現在のrbenvのバージョン: $(rbenv --version)"
      echo "=================="

      echo "=================="
      echo "現在のインストール済Rubyのバージョン \n $(rbenv versions)"      
      echo "==================" ;;
esac

read -p "MySQL5.7をインストールしますか？ (y/n)" ok < /dev/tty
case ${ok} in
  y|Y) brew install mysql@5.7
       brew link mysql@5.7 --force
       
       echo "MySQL5.7のインストールが完了しました。" ;;
esac

read -p "Nokogiri関連のライブラリをインストールしますか? (y/n)" ok < /dev/tty
case ${ok} in
  y|Y) brew install libxml2
      echo 'export PATH="/usr/local/opt/libxml2/bin:$PATH"' >> ~/.zshrc
      export PKG_CONFIG_PATH="/usr/local/opt/libxml2/lib/pkgconfig"
      export LDFLAGS="-L/usr/local/opt/libxml2/lib"
      export CPPFLAGS="-I/usr/local/opt/libxml2/include" 
      echo "インストールが完了しました。" ;;
esac

read -p "Redisをインストールしますか？ (y/n)" ok < /dev/tty
case ${ok} in
  y|Y) brew install redis
      echo "インストールが完了しました。" ;;
esac

read -p "yarnをインストールしますか？ (y/n)" ok < /dev/tty
case ${ok} in
  y|Y) brew install yarn
       echo "インストールが完了しました。" ;;
esac




