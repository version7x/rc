#!/bin/bash                                                                                                                        

## to download/install/run this script in one line:
/bin/bash -c "$(curl -fsSl https://github.com/version7x/home/edit/master/bin/homebrew-install.sh)"

chsh -s /bin/bash 2>/dev/null

xcode-select --install

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
brew update

brew install git 
git clone https://github.com/version7x/home.git 
cp -Rp home/* .
cp -Rp home/.bash_profile $HOME/
cp -Rp home/.vimrc $HOME/
# Clean Up
rm -rf home
rm -rf windows-terminal.json

. ~/.bash_profile

# Install pkgs
brew install python3
pip3 install --upgrade pip --user
pip3 install pipenv --user

brew cask install visual-studio-code
brew cask install google-backup-and-sync
brew install brave-browser

brew install terraform
brew install docker