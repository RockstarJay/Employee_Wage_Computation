#!/bin/bash

echo "Welcome to Employee Wage Computation Program"

isPartTime=1
isFullTime=2
empWagePerHour=20
empHours=0
monthlyWage=0
count=0
for (( i=0; i<20; i++ ))
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
	dailyWage[$i]=$(($empHours*$empWagePerHour))
done
echo "Daily Employee Wage : ${dailyWage[@]}"
for (( i=0; i<20; i++ ))
do
	wage=${dailyWage[i]}
	monthlyWage=$((monthlyWage+wage))
done
echo " Employee's Monthly Wage is: " $monthlyWage
