# Commands to run in interactive sessions can go here
if status is-interactive
    starship init fish | source
    zoxide init fish | source
    atuin init fish --disable-up-arrow | source
end

# binaries
fish_add_path ~/.cargo/bin
fish_add_path ~/go/bin
fish_add_path ~/Library/Python/3.11/bin
fish_add_path ~/.local/bin
fish_add_path ~/.config/tmux/plugins/t-smart-tmux-session-manager/bin
# custom scripts
fish_add_path ~/code/scripts

# Only for mac
if test "$(uname)" = Darwin
    fish_add_path /opt/homebrew/bin
    fish_add_path /opt/homebrew/sbin
    # I forgot what issue this was causing but it was annoying
    set -x DYLD_FALLBACK_LIBRARY_PATH "$(xcode-select --print-path)/usr/lib/"
end

set -gx EDITOR nvim
set -gx STARSHIP_CONFIG ~/.config/starship/starship.toml
set -gx fish_greeting # disable greeting message

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
