#!/bin/bash

echo "Welcome to Employee Wage Computation Program"

isPartTime=1
isFullTime=2
empWagePerHour=20
empHours=0
checkemp=$((RANDOM%3))
if [ $checkemp -eq $isPartTime ]
then
	echo "Employee Present Part Time"
	empHours=8
elif [ $checkemp -eq $isFullTime ]
then
	echo "Employee Present Full Time"
	empHours=16
else
	echo "Employee is Absent"
	empHours=0
fi
totalWage=$(($empHours*$empWagePerHour))
echo "The Daily Wage is : " $totalWage
