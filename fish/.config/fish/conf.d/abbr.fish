# program abbrs
abbr vim nvim
abbr lg lazygit

# place abbrs
abbr dot "z dotfiles && nvim"

# command abbrs
abbr c clear
abbr cl clear
abbr claer clear
abbr clera clear
abbr , z

# tmux
abbr tk "tmux kill-server"
abbr ta "tmux a"
abbr tat "tmux attach -t"
abbr td "t dotfiles"
abbr tn "tmux new -s (basename (pwd))"

# micromamba
abbr mam micromamba
abbr mc "micromamba create"
abbr ma "micromamba activate"
abbr md "micromamba deactivate"
abbr mae 'micromamba activate | fzf --query="$1" -m --preview "micromamba env list"'
# man-style pages with tldr
abbr toolong "tldr --list | fzf --header 'I ain readin allat' --reverse --preview 'tldr {1} --color=always' --preview-window=right,80% | xargs tldr"
