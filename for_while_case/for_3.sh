#!/bin/bash
#数组的使用
read -p "please input num :" num

for (( i=0; i<${num}; i++ ))
  do
     array[$i]=$i; 
  done

for (( i=0; i<${num}; i++ ))
   do
      echo "array[$i]=${array[$i]}" 
  done
