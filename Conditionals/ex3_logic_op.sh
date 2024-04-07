#!/bin/bash

read -p "Enter two values: "  val1 val2
read -p "Enter an operation(and/or/not) to perform:" op

case $op in
and)
if [[ $val1 == true && $val2 == true ]]
then
echo "Result: true"
else
echo "Result: false"
fi;;
or)
if [[ $val1 == true || $val2 == true ]]
then
echo "Result: true"
else
echo "Result: false"
fi;;
not)
if [[ $val1 == true ]]
then
echo "Result: false"
else
echo "Result: true"
fi;;
*) echo "Invalid operator."
esac
