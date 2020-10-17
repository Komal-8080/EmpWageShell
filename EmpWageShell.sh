#!/bin/bash -x

user=$(whoami)
echo " Hello $user Welcome to Employee Wage Computation"

wagePerHour=20
empCheck=$((RANDOM%3))
	if [ $empCheck -eq 2 ];
	then
		echo "Employee Present"
		working_hours=8
	elif [ $empCheck -eq 1 ];
	then
		echo "Employee Present"
		working_hours=4
	else
		echo "Employee Absent"
		working_hours=0
	fi
daily_emp_wage=$((wagePerHour*working_hours))
echo "Daily Employee Wage is $daily_emp_wage"
