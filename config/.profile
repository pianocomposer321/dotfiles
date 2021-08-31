export EDITOR=/usr/bin/nvim
export QT_QPA_PLATFORMTHEME="qt5ct"
export QT_AUTO_SCREEN_SCALE_FACTOR=0
export GTK2_RC_FILES="$HOME/.gtkrc-2.0"

export PATH=$PATH:"$HOME/scripts"
setxkbmap -option caps:swapescape

alias luamake=/home/composer3/.config/nvim/lua-language-server/3rd/luamake/luamake
alias config='/usr/bin/git --git-dir=/home/composer3/dotfiles/ --work-tree=/home/composer3'
