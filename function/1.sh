#!/bin/bash
#�����Ķ���ʹ�ã������Ĳ������ݣ�$1 $2 $3
function  hello()
{
   echo "this function hello $1 `date` $2 $3"
   echo "test pwd `pwd`"
}

echo "-------------------0"
hello 123456 shsh $3
echo "-------------------1"