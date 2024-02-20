if status is-interactive
    # Commands to run in interactive sessions can go here
end

starship init fish | source
zoxide init fish | source

set -Ux EDITOR nvim
set -Ux STARSHIP_CONFIG ~/.config/starship/starship.toml
set -Ux fish_greeting #disable fish greeting
set -Ux fish_key_bindings fish_vi_key_bindings
# set -Ux VOLTA_HOME $HOME/.volta
# set -Ux VOLTA_FEATURE_PNPM 1 #enable volta pnpm support
set -x DYLD_FALLBACK_LIBRARY_PATH "$(xcode-select --print-path)/usr/lib/"

#for image.nvim

fish_add_path /opt/homebrew/bin
fish_add_path /opt/homebrew/sbin
fish_add_path $HOME/.local/bin
fish_add_path $HOME/.config/tmux/plugins/t-smart-tmux-session-manager/bin
fish_add_path $HOME/.cargo/bin
fish_add_path $HOME/.config/emacs/bin
fish_add_path $HOME/$VOLTA_HOME/bin
fish_add_path $HOME/go/bin
fish_add_path $HOME/Library/Python/3.11/bin
fish_add_path $HOME/code/scripts
# fish_add_path $HOME/.local/share/nvim/mason/bin

fish_default_key_bindings

alias ls "exa --icons --group-directories-first --color always"

# >>> mamba initialize >>>
# !! Contents within this block are managed by 'mamba init' !!
set -gx MAMBA_EXE /opt/homebrew/opt/micromamba/bin/micromamba
set -gx MAMBA_ROOT_PREFIX /Users/cameronmalone/micromamba
$MAMBA_EXE shell hook --shell fish --prefix $MAMBA_ROOT_PREFIX | source
# <<< mamba initialize <<<

# pnpm
set -gx PNPM_HOME /Users/cameronmalone/Library/pnpm
if not string match -q -- $PNPM_HOME $PATH
    set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end

# opam configuration
source /Users/cameronmalone/.opam/opam-init/init.fish >/dev/null 2>/dev/null; or true

source /opt/homebrew/opt/asdf/libexec/asdf.fish
