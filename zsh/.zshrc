zmodload zsh/zprof
# ZSH CONFIG - Cameron Malone
# cameronmkm2@gmail.com
# @mkdev

# Path to your oh-my-zsh installation.
export ZSH="/Users/cameronmalone/.oh-my-zsh"
export PATH="$PATH:/Users/cameronmalone/.local/bin"
export EDITOR='nvim'
export OP_BIOMETRIC_UNLOCK_ENABLED=true

# Which plugins would you like to load?
# lazy load nvm
plugins=(zsh-autosuggestions zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh
source /Users/cameronmalone/.config/op/plugins.sh

source "$HOME/.config/zsh/aliases.zsh"
source "$HOME/.config/zsh/prompt.zsh"
source "$HOME/.config/zsh/exports.zsh"

export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"
zprof
