#!/bin/bash
# Author: Nick Hanselman
# Date: 1/31/2019
echo "Enter a number: "
read numOne
echo "Enter a secondNumber: "
read numTwo
sum=$(($numOne + $numTwo))
echo "The sum is : $sum"
let prod=numOne*numTwo
echo "The product is: $prod"
echo "File Name: $0"
echo "Command Line Arg 1: $1"
grep $1 $2
