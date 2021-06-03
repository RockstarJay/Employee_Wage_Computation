#!/bin/bash

echo "Welcome to Employee Wage Computation Program"

isPartTime=1
isFullTime=2
empWagePerHour=20
empHours=0
checkemp=$((RANDOM%3))
case $checkemp in
	$isPartTime)
		echo "Employee Present Part Time"
		empHours=8
		;;
	$isFullTime)
		echo "Employee Present Full Time"
		empHours=16
		;;
	0)
		echo "Employee is Absent"
		empHours=0
		;;
esac
totalWage=$(($empHours*$empWagePerHour))
echo "The Daily Wage is : " $totalWage

