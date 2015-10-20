#!/bin/bash
#函数的定义使用，函数的参数传递，$1 $2 $3
function  hello()
{
   echo "this function hello $1 `date` $2 $3"
   echo "test pwd `pwd`"
}

echo "-------------------0"
hello 123456 shsh $3
echo "-------------------1"