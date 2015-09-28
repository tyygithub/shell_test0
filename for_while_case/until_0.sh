#!/bin/bash
#Version:0.1.1
#Auther:lovelace
#pragram:show menu and wait user choice
#
#difine an function to display the menu
showmenu(){
echo -n '+----------'
echo  -n -e "\033[1;32mshowmenu\033[0m"
echo '-----------+'
echo -e "| \033[31md|D) show disk information\033[0m  |"
echo -e "| \033[31mm|M) show memory usage\033[0m      |"
echo -e "| \033[31ms|S) show swap usage\033[0m        |"
echo -e "| \033[31mq|Q) quitting\033[0m               |"
echo -n '+-------------'
echo  -n -e "\033[5,33mEND\033[0m"
echo '--------------+'
}
#call showmenu function
echo
showmenu
echo
#read the argument for user input
read -p "Your choice is:" choice
#use until statement to loop
until [ "$choice" == "q" -o "$choice" == "Q" ];do
case $choice in
d|D)
echo "Disk information:"
df -h
;;
m|M)
echo "Memory information:"
free -m | grep "Mem"
;;
s|S)
echo "Swap information:"
free -m | grep "Swap"
;;
q|Q)
echo "quitting...."
exit 8
;;
*)
echo "Unknow argument."
;;
esac
#call showmenu function again
echo
showmenu
echo
#read user input again
read -p "Please select again:" choice
done

