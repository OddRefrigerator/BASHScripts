#Traveling Profile
# wget https://raw.githubusercontent.com/SuperFlea2828/BASHScripts/master/.bashrc -O ~/.bashrc && . ~/.bashrc


#-------------------
# Personnal Aliases
#-------------------
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias mkdir='mkdir -p'

alias l='ls -sail'
alias ll='ls -alh'
alias ls='ls -F --color=auto'



#-------------------
# Folder Aliases
#-------------------
alias home='cd ~'
alias root='cd /'


#-------------------
# Program tricks
#-------------------
extract () {
   if [ -f $1 ] ; then
       case $1 in
           *.tar.bz2)   tar xvjf $1    ;;
           *.tar.gz)    tar xvzf $1    ;;
           *.bz2)       bunzip2 $1     ;;
           *.rar)       unrar x $1       ;;
           *.gz)        gunzip $1      ;;
           *.tar)       tar xvf $1     ;;
           *.tbz2)      tar xvjf $1    ;;
           *.tgz)       tar xvzf $1    ;;
           *.zip)       unzip $1       ;;
           *.Z)         uncompress $1  ;;
           *.7z)        7z x $1        ;;
           *)           echo "don't know how to extract '$1'..." ;;
       esac
   else
       echo "'$1' is not a valid file!"
   fi
 }