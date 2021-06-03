#!/bin/bash

echo "Welcome to Employee Wage Computation Program"

isPartTime=1
isFullTime=2
empWagePerHour=20
monthlyHours=100
monthlyWorkingDays=20
monthlyWage=0
workingHours=0
for (( i=0; i<$monthlyWorkingDays && $workingHours<$monthlyHours; i++ ))
do
	checkemp=$((RANDOM%3))
	case $checkemp in
		$isPartTime)
			empHours=8
			;;
		$isFullTime)
			empHours=16
			;;
		*)
			empHours=0
			;;
	esac
	workingHours=$(($workingHours+$empHours))
done
monthlyWage=$(($workingHours*$empWagePerHour))
echo " Employee's Monthly Wage is: " $monthlyWage

