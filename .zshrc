export ZSH=/Users/zan9/.oh-my-zsh
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="af-magic"
plugins=(git)
source $ZSH/oh-my-zsh.sh

export PATH=/usr/local/bin:$PATH
fpath=(/usr/local/share/zsh-completions $fpath)


eval "$(rbenv init -)"

#pecoのせってい
function peco-z-search
{
 which peco z > /dev/null
 if [ $? -ne 0 ]; then
   echo "Please install peco and z"
   return 1
 fi
 local res=$(z | sort -rn | cut -c 12- | peco)
 if [ -n "$res" ]; then
   BUFFER+="cd $res"
   zle accept-line
 else
   return 1
 fi
}
zle -N peco-z-search
bindkey '^f' peco-z-search
# end peco

alias v='vim'


alias be='bundle exec'



source ~/.zsh.d/z.sh
source ~/.awskey


