#!/bin/bash

## install homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"


set -x

## brew

brew update
brew upgrade

brew install coreutils # GNU core utilities (those that come with OS X are outdated)
brew install moreutils
brew install findutils # GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed
brew install gnu-sed
brew install gawk
brew install bash
brew install zsh
brew install zsh-completions
brew install vim
brew install wget
brew install nano
brew install grep
brew install openssh
brew install screen

brew install git
brew install node
brew install python
brew install nvm && mkdir -p ~/.nvm
brew install rename
brew install tree
brew install watch
brew install zlib
brew install exiftool
brew install imagemagick
brew install ffmpeg

brew install youtube-dl

brew cleanup

## brew cask (mac binaries)

#brew tap caskroom/cask
#brew cask install visual-studio-code
#brew cask install google-chrome
#brew cask install imagealpha
#brew cask install imageoptim
#brew cask install iterm2
#brew cask install skype
#brew cask install vlc

brew tap homebrew/cask-fonts
brew cask install font-source-serif-pro
brew cask install font-source-sans-pro
brew cask install font-source-code-pro
brew cask install font-source-code-pro-for-powerline
brew cask install font-sourcecodepro-nerd-font
brew cask install font-sourcecodepro-nerd-font-mono


## ZSH shell

# change default shell to zsh
ZSHPATH=$(which zsh)
FILE=/etc/shells
grep -qF "$ZSHPATH" "$FILE"  || echo "$ZSHPATH" | sudo tee -a "$FILE" #add if not allready there
chsh -s $ZSHPATH

# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# install powerlevel10k theme
git clone https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k

# install zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# install fzf search
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf && ~/.fzf/install

# install colorls
sudo gem install colorls