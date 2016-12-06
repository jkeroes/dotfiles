# oh-my-zsh

# unix
plugins+=(common-aliases command-not-found cp gnu-utils sudo systemd)

# osx
plugins+=(osx sublime)

# git
plugins+=(git git-extras github gitignore git-remote-branch tig branch)
unalias gg # I prefer my `git grep` over plugin/git's `git gui citool`

# dev
plugins+=(cpanm jira jsontools)

# virt
plugins+=(docker vagrant)

# remote
plugins+=(ssh-agent mosh tmux tmuxinator)
zstyle :omz:plugins:ssh-agent agent-forwarding on
zstyle :omz:plugins:ssh-agent identities dreamhost home-rsa github

# others
# plugins+=(python pip pep8)
# plugins+=(ruby rbenv rake)


# @work
test -d /ndn/etc && source /ndn/etc/ndnperl.rc

# perl
## use envperl
test -d /opt/ndn-perl/jkeroes && ndnperl user

## use my local::lib modules
test -d ~/perl5 && eval "$(perl -I$HOME/perl5/lib/perl5 -Mlocal::lib)"

# iterm2
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# Load aliases and functions
test -e ~/.alias && source ~/.alias
test -e ~/.zshfunc && source ~/.zshfunc

# @work, $lastdir would be better but most of the time, this is good enough
test -d /ndn && cd ~/ndn

# oh-my-zsh
test -d ~/.oh-my-zsh && source ~/.oh-my-zsh/oh-my-zsh.sh

# colors
[ -n "$PS1" ] \
	&& [ -s $BASE16_SHELL/profile_helper.sh ] \
	&& eval "$($BASE16_SHELL/profile_helper.sh)" \
	&& source ~/.config/base16-shell/scripts/base16-monokai.sh
