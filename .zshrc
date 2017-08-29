eval "$(rbenv init -)"

export ZSH=/Users/zan9/.oh-my-zsh
source $ZSH/oh-my-zsh.sh
export PATH=/usr/local/bin:$PATH
fpath=(/usr/local/share/zsh-completions $fpath)



ZSH_THEME="nebirhos"
# User configuration
source $ZSH/oh-my-zsh.sh
 
 
# 文字コードの指定
export LANG=ja_JP.UTF-8
# 日本語ファイル名を表示可能にする
setopt print_eight_bit
# cdなしでディレクトリ移動
setopt auto_cd
# ビープ音の停止
setopt no_beep
# ビープ音の停止(補完時)
setopt nolistbeep
# cd -<tab>で以前移動したディレクトリを表示
setopt auto_pushd
# ヒストリ(履歴)を保存、数を増やす
HISTFILE=~/.zsh_history
HISTSIZE=100000
SAVEHIST=100000
# 同時に起動したzshの間でヒストリを共有する
setopt share_history
# 直前と同じコマンドの場合は履歴に追加しない
setopt hist_ignore_dups
# 同じコマンドをヒストリに残さない
setopt hist_ignore_all_dups
# スペースから始まるコマンド行はヒストリに残さない
setopt hist_ignore_space
# ヒストリに保存するときに余分なスペースを削除する
setopt hist_reduce_blanks
# キーバインディン(vim風)
 
# zsh-completionsの設定
 
autoload -U compinit
compinit -u

export PATH="$HOME/.rbenv/bin:$PATH"




#peco
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

alias be='bundle exec'
alias gss='git status -s'
alias gd='git diff'
alias gd='git diff'
alias gg="git log --graph --date-order -C -M --pretty=format:'%h [%ar] [%an] %Cgreen%d%Creset %s' --all"
alias g=git
alias gstp="git stash pop"
alias gsts="git stash save"
alias grhh="git reset --hard HEAD"


alias ct="`brew --prefix`/bin/ctags"
alias ls="exa"
alias la="exa -la"
