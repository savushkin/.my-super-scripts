#!/bin/bash

alias ..='cd ..'
alias cd..='cd ..'
alias c='clear'

alias bc='bc -l'

alias h='history'
alias j='jobs -l'

alias path='echo -e ${PATH//:/\\n}'
alias now='date +"%T"'
alias nowtime=now
alias nowdate='date +"%d-%m-%Y"'

alias ports='netstat -tulanp'

alias apt-get="sudo apt-get"
alias updatey="sudo apt-get --yes"

alias update='sudo apt-get update && sudo apt-get upgrade'

alias root='sudo -i'
alias su='sudo -i'

if [ $UID -ne 0 ]; then
    alias reboot='sudo reboot'
fi

#bad way
alias helios='ssh -p 2222 s182190@helios.cs.ifmo.ru'

export M2_HOME=/usr/local/apache-maven-3.3.9
export M2=${M2_HOME}/bin
export MAVEN_OPTS="-Xms2048m -Xmx4096m"
export PATH=${M2}:$PATH

export PATH=$HOME/.my-super-scripts:$PATH
