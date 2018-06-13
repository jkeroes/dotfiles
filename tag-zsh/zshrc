# oh-my-zsh

# unix
plugins+=(common-aliases command-not-found cp gnu-utils sudo systemd)

# osx
plugins+=(osx sublime)

# git
plugins+=(git git-extras gitignore git-remote-branch tig branch)

# dev
plugins+=(cpanm jira jsontools)

# virt
plugins+=(docker docker-compose vagrant)

# remote
plugins+=(ssh-agent mosh tmux tmuxinator)
zstyle :omz:plugins:ssh-agent agent-forwarding on
zstyle :omz:plugins:ssh-agent identities dreamhost home-rsa github

# others
# plugins+=(python pip pep8)
# plugins+=(ruby rbenv rake)
# plugins+=(hub)

# Requires install:
# git clone https://github.com/zdharma/fast-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/fast-syntax-highlighting
plugins+=(fast-syntax-highlighting)

# Requires install:
# git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
plugins+=(zsh-autosuggestions)


# @work
test -d /ndn/etc && source /ndn/etc/ndnperl.rc

# perl
## use envperl
test -d /opt/ndn-perl/jkeroes && ndnperl user

## use my local::lib modules
test -d ~/perl5 && eval "$(perl -I$HOME/perl5/lib/perl5 -Mlocal::lib)"

# iterm2
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# colors
[ -n "$PS1" ] \
	&& [ -s $BASE16_SHELL/profile_helper.sh ] \
	&& eval "$($BASE16_SHELL/profile_helper.sh)" \
	&& source ~/.config/base16-shell/scripts/base16-monokai.sh

# @work, $lastdir would be better but most of the time, this is good enough
test -d /ndn && cd ~/ndn

# oh-my-zsh
test -d ~/.oh-my-zsh && source ~/.oh-my-zsh/oh-my-zsh.sh

# Load aliases and functions
test -e ~/.alias && source ~/.alias
test -e ~/.zshfunc && source ~/.zshfunc

if ($SSH_TTY); then
    # I have ssh'd to another host.
    export EDITOR='vim'
    export VISUAL='vim'
else
    # set options for localhost
    export EDITOR='code -w'
    export VISUAL='code -w'
fi
