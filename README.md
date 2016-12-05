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

## Set up terminal

1. Download repo from https://github.com/chriskempson/base16-iterm2
2. In iTerm | Profiles | Colors:
	Import Color Preset eg base16-monokai.dark.256
