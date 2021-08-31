if status is-interactive
    starship init fish | source

    if not set -q TMUX
        exec tmux
    end
end

alias nload="nvim -S .workspace"
alias config='/usr/bin/git --git-dir=/home/composer3/dotfiles/ --work-tree=/home/composer3'
