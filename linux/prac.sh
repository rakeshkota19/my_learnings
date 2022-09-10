#!/bin/bash

echo "Hi"
a=$(whoami)
echo $a


in="Rakesh Kota"
echo ' hi $in'
echo "hi $in"


# $1, $2 -> list of arguments 
# export helps to export variables to child process
# $0 -> name, $# -> no of arguments
# no spaces when assigning variables


read -sp 'type : '  x

echo $x


# we can input from /dev/stdin , /dev/stdout, /devstderr , so three ways of taking input command line args, read, standard input


#arithmetic operations

let a=5+4
let "a = 5 + 4 "

expr 5+5
expr "5 + 5" # this expression will not be evaluated, just directly printed

a=$(( 4 + 5)) # this syntaax is useful, double parenthesis return the result of expression
echo $a

#lenth $(#a)
# let is same as expr , instead of saving it prints the result


# if [ ] \n print then print fi


if [ $1 -gt 10 ]
#if [ $1 -gt 100 ]
then
	echo "greater than 10"
fi

# if  then else
#if then elif then  elif then  else

#while [] do print done
# until same as while, but it runs until the condition is true

# for loop -> for var in x do print done
# {1..5} -> range 
# select is used , for interacticve loops


raki (){
	echo "raki"
}
	
raki


# retrun status , arguemtns are passed in the same way as command line args, $? -> returned value
# command cmd useful for breaking loop
