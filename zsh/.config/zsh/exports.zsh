#exports
export VOLTA_HOME="$HOME/.volta"
export PATH="$PATH:$VOLTA_HOME/bin"
export PATH="$PATH:$HOME/.config/tmux/plugins/t-smart-tmux-session-manager/bin"

export FZF_DEFAULT_COMMAND="fd --hidden --strip-cwd-prefix --exclude .git"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND="fd --type=d --hidden --strip-cwd-prefix --exclude .git"

# gen list for path completion
_fzf_compgen_path() {
  fd --hidden --exclude .git . "$1"
}

# gen list for dir completion
_fzf_compgen_dir() {
  fd --type=d --hidden --exclude .git . "$1"
}

#cmd evals
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
eval "$(zoxide init zsh)"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
# __conda_setup="$('/Users/cameronmalone/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
# if [ 1 -eq 0 ]; then
#     eval "$__conda_setup"
# else
# if [ -f "/Users/cameronmalone/anaconda3/etc/profile.d/conda.sh" ]; then
#     . "/Users/cameronmalone/anaconda3/etc/profile.d/conda.sh"
# else
#     export PATH="/Users/cameronmalone/anaconda3/bin:$PATH"
# fi
# fi
# unset __conda_setup
# <<< conda initialize <<<
