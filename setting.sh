#!/bin/sh
set -e

read -p "Homebrewをインストールしますか？ (y/n)" install < /dev/tty
case $install in
  y|Y) 

    echo "Start Install Homebrew..."

    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

    echo "Install Homebrew is Complete!" ;;

esac


read -p "ログインシェルをzshに変更しますか？ (y/n)" setting < /dev/tty
case $setting in
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
    echo "==================" ;;

esac

read -p "oh my zshをインストールしますか？ (y/n)" ok < /dev/tty
case $ok in
  y|Y) curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh
esac


