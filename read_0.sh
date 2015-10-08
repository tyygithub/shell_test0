#!/bin/bash
read -p "plase input " input
echo -e "\033[41;33;1m$input \033[0m"
case $input in

   ll )
       echo "ls -l"
       ls -l
     ;;
   
  pwd )
      
     echo "pwd"
     pwd
     ;;
esac

