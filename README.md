# New machine setup

## Install rcm on MacOS

brew tap thoughtbot/formulae
brew install rcm

## Install rcm on Ubuntu

sudo add-apt-repository ppa:martin-frost/thoughtbot-rcm
sudo apt-get update
sudo apt-get install rcm

## Fetch and link dotfiles

run `ssh-agent` and `ssh-add ~/.ssh/github`. You may need to bootstrap your .ssh dir.

git clone git@github.com:jkeroes/dotfiles.git ~/.dotfiles
rcdn # delete old dotfiles
rcup -v
