#!/bin/bash

_m2_make_goals()
{
   plugin=$1
   mojos=$2
   for mojo in $mojos
   do
     export goals="$goals $plugin:$mojo"
   done
}

_m2_complete()
{
   local cur goals

   COMPREPLY=()
   cur=${COMP_WORDS[COMP_CWORD]}
   goals='clean test install package site'
   goals=$goals _m2_make_goals "eclipse" "clean eclipse"
   cur=`echo $cur | sed 's/\\\\//g'`
   COMPREPLY=($(compgen -W "${goals}" ${cur} | sed 's/\\\\//g') )
}

complete -F _m2_complete -o filenames mvn
