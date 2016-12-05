# oh-my-zsh

# unix
plugins+=(common-aliases gnu-utils sudo systemd)

# osx
plugins+=(osx sublime)

# dev
plugins+=(git git-extras github gitignore branch jira)

# virt
plugins+=(docker vagrant)

# remote
plugins+=(ssh-agent mosh tmux tmuxinator)

# others
# plugins+=(# python pip pep8)
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

test -d ~/.oh-my-zsh && source ~/.oh-my-zsh/oh-my-zsh.sh
