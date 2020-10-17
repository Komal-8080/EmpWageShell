#!/bin/bash -x

user=$(whoami)
echo " Hello $user Welcome to Employee Wage Computation"

wagePerMonth=0
wagePerHour=20
   for (( i=0; i<20; i++ ))
   do
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
	wagePerMonth=$((wagePerMonth+daily_emp_wage))
  	echo "Today's wage is $daily_emp_wage"
   done
echo "Employee Wage per month is $wagePerMonth"
