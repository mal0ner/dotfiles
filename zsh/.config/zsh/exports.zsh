[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
eval "$(zoxide init zsh)"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/cameronmalone/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ 1 -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/cameronmalone/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/cameronmalone/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/cameronmalone/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
