# Exit Code in Bash :-

Every command that we execute in linux shell has a dedicated exit code associated to it, that tells whether the command executed successfully or not. This can help us to a programatic way to determine whether the command worked well or not otherwise most of the time we just look at the logs and then determine this.
- Exit code 0 means the command was successful.
- Non zero exit code means there was some issue.

...Bash

pwd 

echo $? # This will print 0, as pwd command has no issue and will definetely run

...


To get access of this status code, there is a variable which stores after any command is execute i.i. $?

Note: echo commands mostly always have 0 exit code as they mostly get no errors

...Bash

ls -l /something #considering /something doesn't exist
echo $? #this will print something other than 0.

...



# Loops in bash script
In bash we have support of loops using which we can do repeated tasks.

1. while loop
while loop takes a condition and keeps on running it's lock of code till the time the condition doesn't become false.

...bash

while [ condition ]
do
#some logic
done

...

To write a while loop that prints counting of first 10 natural numbers we can do:

...bash

i=1 #This is a variable using which we will control the while loop to start and stop

while [ $i -le 10 ]
do
echo "Value of i is : $i";
i=$((i+1)) #Increment the value of i by 1
sleep 1 #pause the execution by 1 second
done

...

Here in the conditiont we are checking [ $i -le 10 ] i.e. till the time i is less than or equal to 10. we keep on executing the block of white, and the moment i goes beyond 10, we terminate the loop and move ahead.

If we consider one more example of while loop :
...bash


while [ -f Notes.txt ]
do
echo "File exixts till $(date +%H-%M-%S)";
sleep 5 #pause the execution by 1 second
done
echo "File no longer accessible from $(date +%H-%M-%S)"

...

Here we keep on running the while loop till the time the Loops.sh file exists in the same folder as that of the loop file. For every iteration of the loop we sleep for 5's. Which is kind of a delay we are adding up.
Once you rename / remove the file, the loop stops immediately when it checks the condition.




# problem statement:
Create a bash script that monitors a derectory and continously counts the number of files in it. The script should print the file count every 5 sec, and if the directory becomes empty, the script should exit with a message indicating that the directory is empty.

# Solution

...bash


#!/bin/bash

directory_to_check=$1;

while [ "$(ls -A $directory_to_check)" ] #til the time directory exists keep running the loop
do 
file_count=$(ls -l $directory_to_check | wc -l);
echo "File count in direct is $file_count"
sleep 5;
done
echo "Directory is now empty"

...

1. We first of all take the directory as input.
2. In the while loop we are using [ ls -A ] that will also list hidden files from the input directory.
3. To do the file count we use [ ls -l ] which prints the out of is command in multiple lines and then we pipe this multiple output to the 'wc' command which counts the words, characters and lines from a text. And because we are using 'wc' with a '-l' flag, it will only count the number of lines.

# For loop in bash :
We have while loops that keep on executing the task till the time condition is actually true. On the other hand we have for loops that can run again and again for ecah item in a list or set of items.

...bash
for i in 1 2 3 4 5
do 
echo "i is $i"
sleep 2;
done
...

Here, We have a variable i, used inside the for loop which goes one by one every single items of list and take it's value. Then just like while loops we use do and done to create a block of for which will be executed again and again till the time 'i' takes value of each and every single item

Note: 
In bash, if we want to represent a range of numbers we can use {x..y}. Here the range will start from x and Incrementally move up till y.

...bash
for i in {1..5}
do 
echo "i is $i"
sleep 2;
done
...

# Interesting problem
Let's say we want to generate zip of every file inside a folder sepperately then we can use the below script:
...bash

for file in /d/documets/echo/conditionalstatements/*.sh
do
tar -czvf "$file-$(date +%y-%M).tar.gz" "$file"
done

...

Here the for loop has a file variable that goes to each and every single file in the directory mentioned and then use the 'tar'command to zip them up.



# Problem statement :
Write a Bash script that iterates through a directory containing text files. For each text file, the script should:
- count the number of lines in the file.
- Append the line count to the end of the file Line 
# Solution
...bash
for file in /d/documets/echo/conditionalstatements/*.txt
do
line_count=$(wc -l < $file)
echo "Line count is $line_count" >> $file
done...

We are iterating to all the files in the target folder and then passing that whole the file in the wc command with -l flag for counting lines. And then appending the line cound in the same file.
