#!/bin/bash -x

user=$(whoami)
echo " Hello $user Welcome to Employee Wage Computation"

empCheck=$((RANDOM%2))
if [ $empCheck -eq 1 ];
	then
	echo "Employee Present"
	else
	echo "Employee Absent"
fi
