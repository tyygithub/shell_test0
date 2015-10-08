#!/bin/sh

echo '$*  &@ "$*" "&@" diff'
echo -e "\n"
echo -e "\n"
for i in $* 
  do
  echo '-$*--'"$i"
  done

for i in $@

 do
 echo '---$@---'"$i"
 done

for i in "$*"
  do
    echo '..."$*"...'"$i"
  done 

for i in "$@"
  do
  echo '..."$@"..'"$i"
  done

