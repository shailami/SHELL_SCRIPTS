#! /bin/bash
#read -p 'username:' user_val
#
#echo "username: $user_val"
#echo
#read -sp 'password:' user_pass
#
#echo "password: $user_pass"

#Example 2 : reading multiple names/input from user storing it in array
#echo      
#echo "Enter names:"
#read -a arraynames
#echo "Names : ${arraynames[0]}, ${arraynames[1]}"

#Example 3 : Read input stored in built in variable Reply Object 
#echo "Enter name"
#read
#echo "Name: $REPLY"

#Example4: Passing an argument to the bash script 

# echo $1 $2 $3 ' > echo $1 $2 $3'
#echo $0 $1 $2 $3 ' > echo $1 $2 $3'

# EXPLANTION : Shailaja Mishra@ShailajasDevice MINGW64 ~/SCRIPTS
# $ ./shellScript2.sh hhhhh kkkkk lllll   --- passed 3 arguments to script which got stored in $1 $2 $3 
# ./shellScript2.sh hhhhh kkkkk lllll  > echo $1 $2 $3


# Example5  -- accepting arguments  (passed arguments as array)
# args=("$@")
# echo "${args[0]} , ${args[1]} , ${args[2]}"
# or else alternative
# echo $@

# echo $#   
# echo $# displays number of arguments passed

#Example 6 - if else 
# count=10 
# if [ $count -eq 9 ]
# then
#  echo "condition is true"
# fi

# count=10 
# if [ $count -eq 10 ]
# then
#  echo "condition is true"
# fi

# count=10 
# if [ $count -ne 9 ]
# then
#  echo "condition is true"
# fi

# example for greater than "gt" comparison 
# count=10 
# if [ $count -gt 9 ]   
# then
#  echo "condition is true"
# fi


# # example for greater than > comparison 
# count=10 
# if [ $count > 9 ]   
# then
#  echo "condition is true"
# fi

# example for greater than > comparison with double paranthesis
# count=10 
# if (($count > 9))  
# then
#  echo "condition is true"
# fi

# count=10 
# if (($count >= 9))  
# then
#  echo "condition is true"
# fi


# word=abc

# if [ $word == "abc" ]
# then 
#   echo "condition is true"
# fi

# word=abc

# if [ $word == "abcvvvv" ]
# then 
#   echo "condition is true"
# fi


# word=abc

# if [ $word = "abc" ]
# then 
#   echo "condition is true"
# fi


# word=abc

# if [ $word != "abccccc" ]
# then 
#   echo "condition is true"
# fi


# checking alphabetical order 
# word=a

# if [[ $word < "b" ]]
# then 
#   echo "condition is true"
# fi
# when we use angle with strings  we need to use double square brackets

# 
# word=a

# if [[ $word > "b" ]]
# then 
#   echo "condition is true"
# else
#   echo "condition is false"
# fi


# word=a
# if [[ $word == "b" ]]
# then 
#   echo "condition b is true"
# elif [[ $word == "a" ]]
#   then
#     echo "condition a is true"
# else
#   echo "condition is false"
# fi

# echo -e "enter name of file :\c"  #to keep cursor on same line \c with -e escape 
# read file_name

# if [ -e $file_name ]   #-e file exists or not 
# then 
#   echo "$file_name found"
# else 
#   echo "$file_name not found"
# fi

# echo -e "enter name of file :\c"  #to keep cursor on same line \c with -e escape 
# read file_name

# if [ -f $file_name ]   #-f file exists and if it is a regular file or not 
# then 
#   echo "$file_name found"
# else 
#   echo "$file_name not found"
# fi



# -d checking for directory exists or not 

# echo -e "enter name of file :\c"  #to keep cursor on same line \c with -e escape 
# read file_name

# if [ -d $file_name ]   #-d file exists and if it is a regular file or not 
# then 
#   echo "$file_name found"
# else 
#   echo "$file_name not found"
# fi


# Shailaja Mishra@ShailajasDevice MINGW64 ~/SCRIPTS
# $ mkdir dir
# Shailaja Mishra@ShailajasDevice MINGW64 ~/SCRIPTS
# $ ./shellScript2.sh 
# enter name of file :dir
# dir found

# 2 types of file block special file and character special file 
# character special is a normal file that contains text and characters a
# block special is binary file picture file or video file music files image files 
#  for block special file -b flag
#  for charcter special file -c flag
# checking file is empty or not -s flag 


# echo -e "enter name of file :\c"  #to keep cursor on same line \c with -e escape 
# read file_name

# if [ -s $file_name ]   #-d file exists and if it is a regular file or not 
# then 
#   echo "$file_name not empty"
# else 
#   echo "$file_name empty"
# fi

# flag -r to check file has read permission or not 
# flag -w to check file has write permission or not 
# flag -x to check file has execute permission or not 

# example for appending output to end of text file

# echo -e "Enter name of file: \c"
# read file_name

# if [ -f $file_name ]    #-e flag here stands for file exists or not, -f flag to check if exists and is valid or not
# then
#   if [ -w $file_name ]
#   then
#     echo "Type some text data. to quit press ctrl D"
#     cat >> $file_name
#   else
#     echo "$file_name doesn't has write permission"
#   fi
# else
#   echo "$file_name not exists"
# fi



# Shailaja Mishra@ShailajasDevice MINGW64 ~/SCRIPTS (main)
# $ chmod -w testData
# Shailaja Mishra@ShailajasDevice MINGW64 ~/SCRIPTS (main)
# $ ./shellScript2.sh 
# Enter name of file: testData
# # testData doesn't has write permission
# Shailaja Mishra@ShailajasDevice MINGW64 ~/SCRIPTS (main)
# $ chmod u+w testData

# Shailaja Mishra@ShailajasDevice MINGW64 ~/SCRIPTS (main)
# $ ls -lrth


#Evaluating 2 conditions we use either && or || operator
# age=25

# if [ $age -gt 18 ] && [ $age -lt 30 ]    # -gt greater than -lt less than  
# then 
#   echo "$age is valid age "
# else
#   echo "$age not valid age "
# fi 

# age=50

# if [ $age -gt 18 ] && [ $age -lt 30 ]    # -gt greater than -lt less than  
# then 
#   echo "$age is valid age "
# else
#   echo "$age not valid age "
# fi 



# -a flag stands for &&  .... removed  &&

# age=25

# if [ $age -gt 18 -a $age -lt 30 ]    # -gt greater than -lt less than  
# then 
#   echo "$age is valid age "
# else
#   echo "$age not valid age "
# fi 


# age=50

# if [ $age -gt 18 -a $age -lt 30 ]    # -gt greater than -lt less than  
# then 
#   echo "$age is valid age "
# else
#   echo "$age not valid age "
# fi 


# 3 ways of using && operator
# [] && []
#  -a
# [[  &&  ]]


# age=25

# if [[ $age -gt 18 && $age -lt 30 ]]    # -gt greater than -lt less than  
# then 
#   echo "$age is valid age "
# else
#   echo "$age not valid age "
# fi 


# working with OR operator 
# age=50

# if [ $age -gt 18 ] || [ $age -lt 30 ]    # -gt greater than -lt less than  
# then 
#   echo "$age is valid age "
# else
#   echo "$age not valid age "
# fi 



# age=50

# if [[ $age -eq 18  ||  $age -eq 30 ]]    # -gt greater than -lt less than  
# then 
#   echo "$age is valid age "
# else
#   echo "$age not valid age "
# fi 


# age=18

# if [ $age -eq 18  -o  $age -eq 30 ]    # -gt greater than -lt less than  
# then 
#   echo "$age is valid age "
# else
#   echo "$age not valid age "
# fi 


# Or Operator pipe can be used in 3 ways 
# [] || []
# [[  ||  ]]
# [  -o  ]


# ARITHMETIC OPERATION EXAMPLES 

# echo 1+1 #outputs the string as it is doesnt performs arithmetic operation

# num1=20
# num2=5
# # To perform arithmetic operation we need $(( ))

# echo $(( num1 + num2 ))
# echo $(( num1 / num2 ))
# echo $(( num1 * num2 ))
# echo $(( num1 - num2 ))
# echo $(( num1 % num2 ))


#Alternative way is using expr command and using $ with variable name
# num1=20
# num2=5
# echo $(expr $num1 + $num2 )
# echo $(expr $num1 / $num2 )
# echo $(expr $num1 * $num2 )  # throws error because while using expr * is not escaped so use it with \ back slash with it to resolve the error
# echo $(expr $num1 - $num2 )
# echo $(expr $num1 % $num2 )

# num1=20
# num2=5
# echo $(expr $num1 + $num2 )
# echo $(expr $num1 / $num2 )
# echo $(expr $num1 \* $num2 )  
# echo $(expr $num1 - $num2 )
# echo $(expr $num1 % $num2 )


# arithmetic operations on decimal values 

#  tools used to perform arithmetc operations on decimal numbers 
