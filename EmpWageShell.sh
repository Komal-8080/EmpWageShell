#!/bin/bash -x

user=$(whoami)
echo " Hello $user Welcome to Employee Wage Computation"

wagePerMonth=0
wagePerHour=20
numberOfWorkingDaysInMonth=20
maxHoursInMonth=100
totalEmpHours=0
totalWorkingDays=0
   	while [[ $totalEmpHours -le $maxHoursInMonth && $totalWorkingDays -lt $numberOfWorkingDaysInMonth ]]
   	do
    		((totalWorkingDays++))
    		empCheck=$((RANDOM%3))
			case $empCheck in
			2)
			echo "Employee Present"
			working_hours=8;;
			1)
			echo "Employee Present"
			working_hours=4;;
			*)
			echo "Employee Absent"
			working_hours=0
			esac
		totalEmpHours=$((totalEmpHours+working_hours))
		echo "Day: $totalWorkingDays EmpHours: $working_hours"
   	done
		wagePerMonth=$((totalEmpHours*wagePerHour))
		echo "Employee Wage per month is $wagePerMonth"
