if status is-interactive
    # Commands to run in interactive sessions can go here
end

starship init fish | source
zoxide init fish | source

set -Ux EDITOR nvim
set -Ux fish_greeting #disable fish greeting
set -Ux fish_key_bindings fish_vi_key_bindings
set -Ux VOLTA_HOME $HOME/.volta

fish_add_path /opt/homebrew/bin
fish_add_path /opt/homebrew/sbin
fish_add_path $HOME/.local/bin
fish_add_path $HOME/.config/tmux/plugins/t-smart-tmux-session-manager/bin
fish_add_path $HOME/.cargo/bin
fish_add_path $HOME/.config/emacs/bin
fish_add_path $HOME/$VOLTA_HOME/bin

alias ls "exa --icons --group-directories-first --color always"

# >>> mamba initialize >>>
# !! Contents within this block are managed by 'mamba init' !!
set -gx MAMBA_EXE /opt/homebrew/opt/micromamba/bin/micromamba
set -gx MAMBA_ROOT_PREFIX /Users/cameronmalone/micromamba
$MAMBA_EXE shell hook --shell fish --prefix $MAMBA_ROOT_PREFIX | source
# <<< mamba initialize <<<
