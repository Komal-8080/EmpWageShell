#!/bin/bash -x

user=$(whoami)
echo " Hello $user Welcome to Employee Wage Computation"

wagePerHour=20
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
daily_emp_wage=$((wagePerHour*working_hours))
echo "Daily Employee Wage is $daily_emp_wage"
