#!/bin/bash

echo "Welcome to Employee Wage Computation Program"

isPresent=1
checkemp=$((RANDOM%2))
if [ $checkemp -eq $isPresent ]
then
	echo "Employee is Present"
else
	echo "Employee is Absent"
fi
