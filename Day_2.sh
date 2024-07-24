#! /usr/bin/bash


echo -e "enter the name of the file: \c"  #to keep the cursor on the same line as echo text we use -e flag and \c
read filename

if [ -e $filename ] # flags -e exist -f file  -d directory
then
  echo "$filename found"
else
  touch  $filename
  echo "$filename not found and it has been creates"
fi
# character special file  - is a text file -c flag
# Block special file is a  binary file -b flag

# -s checks if file is empty

# "$filename found"cat > test.txt used for writing in a file



echo -e "enter the name of the file: \c"  #to keep the cursor on the same line as echo >
read filename

if [ -f $filename ] # flags -e exist -f file  -d directory
then
  echo "$filename found"
  if [ -w $filename ] # flags -e exist -f file  -d directory
  then
    echo "Type Some text data. To quit press Ctrl+d"
    cat >> $filename
  else
    echo "This file do not have write permissionc"
  fi

else
  echo "$filename not found"
fi




age=25
# logical operators 
# if [  $age -gt 18 ] && [ $age -lt 30 ] # flags -e exist -f file  -d directory
# if [  $age -gt 18 -a $age -lt 30 ]  # flag -a stands for and 
if [[  $age -gt 18 && $age -lt 30 ]]
then
  echo "Age is valid"
else
  echo "Age not valid"
fi

age=25
# logical operators 
# if [  $age -gt 18 ] || [ $age -lt 30 ] # flags -e exist -f file  -d directory
# if [  $age -gt 18 -o $age -lt 30 ]  # flag -a stands for and 
if [[  $age -gt 18 || $age -lt 30 ]]
then
  echo "Age is valid"
else
  echo "Age not valid"
fi


#### Arithmatic operation
num1 = 20
num2=5

echo $((num1+num2))
echo $((num1-num2))
echo $((num1*num2))
echo $((num1/num2))
echo $((num1%num2))


#### Arithmatic operation
num1 = 20
num2=5

echo $$( expr $num1+$num2 )
echo $( expr $num1-$num2 )
echo $( expr $num1 \* $num2 )
echo $( expr $num1/$num2 )
echo $( expr $num1%$num2 )
