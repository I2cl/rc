echo "-----------------------------------------------------------------"
echo "-----------------------------------------------------------------"
echo "-----------------------------------------------------------------"
echo "##################(・_・)########################################"
echo "-----------------------------------------------------------------"
echo "-----------------------------------------------------------------"
echo "-----------------------------------------------------------------"

export ZSH=/Users/zan9/.oh-my-zsh
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="dracula"
plugins=(git)
source $ZSH/oh-my-zsh.sh

export PATH=/usr/local/bin:$PATH
fpath=(/usr/local/share/zsh-completions $fpath)


eval "$(rbenv init -)"

#pecoのせってい

function peco-select-history() {
    local tac
    if which tac > /dev/null; then
        tac="tac"
    else
        tac="tail -r"
    fi
    BUFFER=$(\history -n 1 | \
        eval $tac | \
        peco --query "$LBUFFER")
    CURSOR=$#BUFFER
    zle clear-screen
}
zle -N peco-select-history
bindkey '^r' peco-select-history



alias v='vim'
alias be='bundle exec'
alias gss='git status -s'
alias gd='git diff'
alias gd='git diff'
alias gg="git log --graph --date-order -C -M --pretty=format:'%h [%ar] [%an] %Cgreen%d%Creset %s' --all"
alias g=git
alias gstp="git stash pop"
alias gsts="git stash save"




source ~/.zsh.d/z.sh
source ~/.awskey


export PATH="/usr/local/opt/imagemagick@6/bin:$PATH"
