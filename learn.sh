#!/bin/bash --
# $0: file name
# $$: process id
echo "$0:$$ => Running..."

# $#: number of parameters
# $1-$9: at most you can use 9 param
if [ $# != 2 ]
then
    echo "Pass 2 parameters"
    exit 1
fi

echo Arguments: $*
# Differ when enclosed in (")
echo Arguments: $@

# (()): This sign is mainly used for numerical evaluation. It is a compound command.
while(( $# ))
do
    echo The argument is $1
    # shift operator to shift argument
    shift
done

# use config file to prevent user from changing script

source ./config.sh
echo Username: $username

echo "Enter your age:"
read age
if [ $age -ge 18 ]
then
    echo "You can access the further part"
else
    echo "Sorry kiddo, better luck next time😅"
fi

# Represents the last return code
echo $?

# The eval command is a built-in command. It takes a string as its argument and evaluate it, then run the command stored in the argument. It allows using the value of a variable as a variable.
user="username"

# Double quotes must be used around variable and command substitution. Without the double quotes, shell may perform field splitting on different words of the variable.
eval echo "\${$user}"

lastweek='date'

eval $lastweek
