#! /usr/bin/bash
echo "hello worlds"

# system variables
echo $PWD
echo $BASH
echo $BASH_VERSION
echo $HOME

# user defined variables
# echo "enter your name: "
# read f_name l_name
# echo "your name is " $f_name $l_name

# echo "your name is $f_name $l_name"

# for the prompt to appear on the same line as text use -p flag
read -p "username: " user_var
echo "username: $user_var"

# to make inputs like password silent/not visible we use -s
read -sp "password: " passwd
echo
echo "password is " $passwd

# to read an array from the use we use -a flag
echo  "enter names: "
read -a names
echo "names: " ${names[0]} , ${names[1]}

# Read withot variable the value is stored in default variable called reply
echo "Name : "
read
echo "Your name is $REPLY"

# passing arguments to a bash script ./hello.sh Mark Tom John @name arguments
# by default the arguments are stored in the specified var i.e $0 stores the # name of the shell file
echo $0 $1 $2 $3 '> echo $0, $1 , $2 , $3'

# another way of passing args
args=("$@")
echo ${args[0]} ${args[1]} ${args[2]} ${args[3]}
# to print all args
echo $@
# to print the number of args passed
echo $#

# if statement syntax 
# if [condition]
# then
# 	statement
# fi
count=10 

if [ $count -ne 9 ] 
then
  echo "Condition is True"
fi

# if then else statement syntax
if [ $count -ne 9 ] 
then
  echo "Condition is True"
else
  echo "Condition is False"
fi

# if elif else statement syntax
a=9
b=10
if [ $a -ne 9 ] 
then
  echo "Condition a is True"
elif [ $b -ne 9 ] 
then
  echo "Condition b is True"
else
  echo "Conditions are False"
fi
