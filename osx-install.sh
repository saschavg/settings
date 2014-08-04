#!/bin/bash

## maven bash completion

function maven(){
    if [ ! -f ~/.maven-completion.bash ] ; then
        wget https://raw.github.com/juven/maven-bash-completion/master/bash_completion.bash -O ~/.maven-completion.bash
    fi

    if [[ 0 -eq `grep -c 'maven-completion' ~/.profile` ]] ; then

echo hello;
echo "if [ -f ~/.maven-completion.bash ]; then
  . ~/.maven-completion.bash
fi" >> /tmp/profile

    fi
}
#############

maven
