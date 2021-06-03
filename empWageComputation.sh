#!/bin/bash

echo "Welcome to Employee Wage Computation Program"

isPresent=1
checkemp=$((RANDOM%2))
if [ $checkemp -eq $isPresent ]
then
	echo "Employee is Present"
	empWagePerHour=20
	empHours=8
	DailyWage=$(($empHours*$empWagePerHour))
else
	echo "Employee is Absent"
	DailyWage=0
fi
echo "Employee Daily Wage is : " $DailyWage
