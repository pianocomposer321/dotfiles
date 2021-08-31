# Setup fzf
# ---------
if [[ ! "$PATH" == */home/composer3/.fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}/home/composer3/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/composer3/.fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "/home/composer3/.fzf/shell/key-bindings.zsh"
