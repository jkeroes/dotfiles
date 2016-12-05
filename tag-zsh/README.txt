# zsh file execution order
#
# 1. Commands are then read from $ZDOTDIR/.zshenv.
# 2. If the shell is a login shell, commands are read from /etc/zprofile and then $ZDOTDIR/.zprofile.
# 3. If the shell is interactive, commands are read from /etc/zshrc and then $ZDOTDIR/.zshrc.
# 4. If the shell is a login shell, /etc/zlogin and $ZDOTDIR/.zlogin are read.
# ...
# 9.  When a login shell exits, the files $ZDOTDIR/.zlogout and then /etc/zlogout are read.
