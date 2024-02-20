alias vim='nvim'

#command ALIASES
alias ','='z' #use the z (zoxide) script for better cd with history
alias 'lg'='lazygit'
alias '..'='cd ..'

#FREE STRING ALIASES
alias 'bigcum'='cat ~/Music/Folder/Folder/Folder/Folder/Folder/Folder/Folder/Folder/Folder/Folder/System32.txt | lolcat'
alias 'wikisole'='.local/bin/wikisole.sh'

#take alias like oh-my-zsh
take() {
  mkdir $1 && cd $1
}
