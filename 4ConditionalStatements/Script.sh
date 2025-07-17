#/bin/bash

#This is only for if statement
# a=10;
# if [ $a -lt 15 ]; then
# 	echo "This statement is true";
# fi

#This is else if statements 
# b=20;
# if [ $b -gt 10 ]; then
#   echo "This statement is true";
# else
#   echo "This statement is false";
# fi

#This is else if ladder statements 
c=30;
if [ $c -ge 100 ]; then 
	echo "This statement is True";
elif [ $c -le 30 ]; then 
	echo "This is elif statement";
else
	echo "This is else statement";
fi

