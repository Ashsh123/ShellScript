#!/bin/bash

# i=1 #This is a variable using which we will control the while loop to start and stop

# while [ $i -le 10 ]
# do
# echo "Value of i is : $i";
# i=$((i+1)) #Increment the value of i by 1
# sleep 1 #pause the execution by 1 second
# done

# while [ -f Notes.txt ]
# do
# echo "File exixts till $(date +%H-%M-%S)";
# sleep 5 #pause the execution by 1 second
# done
# echo "File no longer accessible from $(date +%H-%M-%S)"


#for loop
# for i in 1 2 3 4 5
# do 
# echo "i is $i"
# sleep 2;
# done

for file in /d/documets/echo/conditionalstatements/*.sh
do
tar -czvf "$file-$(date +%y-%M).tar.gz" "$file"
done
