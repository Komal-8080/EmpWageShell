#!/bin/bash -x

user=$(whoami)
echo " Hello $user Welcome to Employee Wage Computation"

wagePerHour=20
numberOfWorkingDaysInMonth=20
maxHoursInMonth=100
wagePerMonth=0
dailyEmpWage=0
totalEmpHours=0
totalWorkingDays=0
    function workHours(){

       dailyEmpWage=$((working_hours*wagePerHour))
       totalEmpHours=$((totalEmpHours+working_hours))

     }
   	 while [[ $totalEmpHours -le $maxHoursInMonth && $totalWorkingDays -lt $numberOfWorkingDaysInMonth ]]
   	 do
    		((totalWorkingDays++))
    		empCheck=$((RANDOM%3))

			echo "Day: $totalWorkingDays"
			case $empCheck in
			2)
			echo "Employee Working Hours Fulltime"
			working_hours=8;;
			1)
			echo "Employee Working Hours Parttime"
			working_hours=4;;
			*)
			echo "Employee Absent"
			working_hours=0
			esac
		workHours
		echo "Today's earning is $dailyEmpWage"
		echo "Employee Work Hours: $working_hours"
   	done
		wagePerMonth=$((totalEmpHours*wagePerHour))
		echo "                                             "
		echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
		echo "Total Employee Wage per month is $wagePerMonth"
		echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
		

