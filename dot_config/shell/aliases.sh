#!/usr/bin/env zsh

alias main='git checkout main && git fetch && git pull origin main && git branch --merged main | grep -v "^\* main" | xargs -n 1 -r git branch -d'
alias remain='for repo in ~/Workspace/Projects/.* ~/Workspace/Projects/*/ ; do if [ -d "$repo/.git" ]; then ( cd $repo && echo "Refreshing --------> $repo" && main ); fi; done'
alias uncommit='git reset --soft HEAD~1'

alias please='sudo $(fc -nl -1)' # Repeat last command with sudo

# Does not force upgrade formulae where auto-updating is switched on; if required 
# use 'brew cu' with '--all'
alias freshbrew='brew update && brew upgrade && brew cu --yes --cleanup && mas upgrade && brew cleanup'

if command -v eza > /dev/null; then
    alias ld='eza -lD'
    alias lf='eza -lf --color=always'
    alias lh='eza -dl .* --group-directories-first'
    alias ll='eza -al --group-directories-first'
    alias ls='eza -al --color=always'
    alias lt='eza -al --sort=modified'
else
    # Show full output when using ls
    alias ls='ls -AlhF --color=auto'
fi

alias localip='ipconfig getifaddr en0'
alias publicip='dig +short myip.opendns.com @resolver1.opendns.com'

alias path='echo -e ${PATH//:/\\n}'
alias envs='env -0 | sort -z | tr "\0" "\n"'

alias lock='pmset displaysleepnow'

alias chrome='open -a Google\ Chrome'
alias safari='open -a Safari'
alias browse='open'
