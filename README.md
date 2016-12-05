# New machine setup

You'll need rcm on every machine

## MacOS

### Install rcm

	brew tap thoughtbot/formulae
	brew install rcm

### Install a better ctags for Janus/Vim

MacOS Sierra (12.1) doesn't ship with a suitable ctags. Brew's version is fine.

	brew install ctags

### Set up iTerm

1. Download repo from https://github.com/chriskempson/base16-iterm2 
1. Go to iTerm | Profiles | Colors
1. Import Color Preset eg base16-monokai.dark.256

## Ubuntu

### Install rcm

	sudo add-apt-repository ppa:martin-frost/thoughtbot-rcm
	sudo apt-get update
	sudo apt-get install rcm

## All OS's

### Fetch and link dotfiles

run `ssh-agent` and `ssh-add ~/.ssh/github`. You may need to bootstrap your .ssh/ dir to run `git clone`.

	git clone git@github.com:jkeroes/dotfiles.git ~/.dotfiles
	rcdn # delete old dotfiles
	rcup -v

# TODO

1. bin/pushbullet-bash
1. document gvim
1. dedupe rcrc files with help from hooks?
1. determine if we can deploy rcm scripts from ~/bin to save install steps.
