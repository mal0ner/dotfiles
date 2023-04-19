# ZSH CONFIG - Cameron Malone
# cameronmkm2@gmail.com
# @mkdev

# Path to your oh-my-zsh installation.
# export ZSH="/Users/cameronmalone/.oh-my-zsh"
export PATH="$PATH:/Users/cameronmalone/.local/bin"
export EDITOR='nvim'
# export OP_BIOMETRIC_UNLOCK_ENABLED=true

#only cache to zcompdump once per 24 hours
autoload -Uz compinit
for dump in ~/.zcompdump(N.mh+24); do
  compinit
done
compinit -C

# Which plugins would you like to load?
# lazy load nvm
# plugins=(zsh-autosuggestions zsh-syntax-highlighting)
# source $ZSH/oh-my-zsh.sh
# source /Users/cameronmalone/.config/op/plugins.sh

### Added by Zinit's installer
if [[ ! -f $HOME/.local/share/zinit/zinit.git/zinit.zsh ]]; then
    print -P "%F{33} %F{220}Installing %F{33}ZDHARMA-CONTINUUM%F{220} Initiative Plugin Manager (%F{33}zdharma-continuum/zinit%F{220})…%f"
    command mkdir -p "$HOME/.local/share/zinit" && command chmod g-rwX "$HOME/.local/share/zinit"
    command git clone https://github.com/zdharma-continuum/zinit "$HOME/.local/share/zinit/zinit.git" && \
        print -P "%F{33} %F{34}Installation successful.%f%b" || \
        print -P "%F{160} The clone has failed.%f%b"
fi

source "$HOME/.local/share/zinit/zinit.git/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit
### End of Zinit's installer chunk

#plugins
# zinit light zsh-users/zsh-completions
zinit ice wait lucid
zinit light zsh-users/zsh-completions
zinit ice wait lucid
zinit light zsh-users/zsh-autosuggestions
zinit ice wait lucid
zinit light zdharma-continuum/fast-syntax-highlighting

source "$HOME/.config/zsh/prompt.zsh"
source "$HOME/.config/zsh/exports.zsh"
source "$HOME/.config/zsh/aliases.zsh"

clear
