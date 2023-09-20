#!/bin/bash

echo Input X
read x
echo Input Y
read y

if [ $x -gt $y ]
then
echo X is greater than Y
elif [ $x -lt $y ]
then
echo X is less than Y
elif [ $x -eq $y ]
then
echo X is equal to Y
fi

echo Input a
read a
echo Input b
read b
echo Input c
read c

echo a = $a, b = $b, c = $c
if [ $a -eq $b -a $b -eq $c -a $a -eq $c ]
then
echo EQUILATERAL

elif [ $a -eq $b -o $b -eq $c -o $a -eq $c ]
then 
echo ISOSCELES
else
echo SCALENE

fi