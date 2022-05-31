#!/bin/bash

username=Alay

for(( i=1; i<=10; i++))
do
    echo "table for 2: $i"
done

i=10

while [ $i -gt 0 ]
do
    echo "Reverse order number $i"
    let i--
done

let i++

until [ $i -gt 10 ]
do
    echo "Reverse order number $i"
    let i++
done

function Welcome() {
    echo "Hello $1"
}

Welcome Jake

# echo "Enter state name:"
# read state

# case $state in
#     "Gujarat")
#         echo "Capital: Gandhinagar"
#     ;;
#     "Rajasthan")
#         echo "Jaipur"
#     ;;
#     "Panjab" | "Haryana")
#         echo "Capital: Chandigarh"
#     ;;
#     *)
#         echo "Unknown state"
#     ;;
# esac

# while getopts ":abc" option;
# do
#     case $option in
#         a)
#             echo "received -a"
#         ;;
#         b)
#             echo "received -b"
#         ;;
#         c)
#             echo "received -c"
#         ;;
#         *)
#             echo "invalid option $OPTARG"
#         ;;
# esac
# done

while getopts ":ab:c" option;
do
    case $option in
        a)
            echo "received -a"
        ;;
        b)
            echo "received -b with $OPTARG"
        ;;
        c)
            echo "received -c"
        ;;
        *)
            echo "invalid option $OPTARG"
        ;;
esac
done