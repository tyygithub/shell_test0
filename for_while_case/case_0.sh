#!/bin/bash
i=$1
case $i in
  aa )
     echo "=====input aa" 
     ;;
   bb )
     echo "======input bb"
    ;;

   * )
    echo "======input $i"
esac
