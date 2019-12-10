#!/bin/bash
# This shows how to do the basic adding, subtract etc

num1=2
num2=4
# Have to use double brackets for arithmetic expressions
echo "SUM $((num1 + num2)) "

# Increase variable (assignment operator)
echo "SUM: this doesn't assign $(($num1 + 1)) "
echo "SUM: variable has been assigned a new value $((++num1)) "
echo "SUM: variable has been assigned a new value $((num1 += 1)) "
echo "TOTAL: variable is now ${num1} "
