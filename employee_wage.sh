echo "Welcome to Employee Wage Computation"
isPresent=1
checkAttendance=$((RANDOM%2))
if [ $isPresent -eq $checkAttendance ] 

then echo -e "Employee is present\n"

else echo -e "Employee is absent\n"
	
fi

echo "Full-Time Employee: Enter 1"
echo "Part-Time Employee: Enter 2"
echo "Calculate Wage: Enter 3"

read number
case $number in 

1)



wage_perhour=20 
full_dayhour=8
workingday_permonth=20

mul=$(($wage_perhour*$full_dayhour*$workingday_permonth))
echo -e "Daily Employee Wage $mul\n"

;;

2)

echo "Enter your part-time working hour"
read part_time

wage_perhour=20
workingday_permonth=20
mul=$(($part_time*$wage_perhour*$workingday_permonth))
echo -e "Part-Time Employee Wage $mul\n"
;;


3)


MAX_HOUR=100
HOUR_RATE=20
MAX_DAYS=20

total_hoursWorked=0
total_daysWorked=0

echo -e "Enter hours worked in a day\n"
read -r hours_worked
while [ "$total_hoursWorked" -le "$MAX_HOUR" ] && [ "$total_daysWorked" -le "$MAX_DAYS" ]; do



if [ "$hours_worked" -eq 0 ]; then
break
fi

total_hoursWorked=$((total_hoursWorked+hours_worked))
total_daysWorked=$((total_daysWorked+1))
done

total_wages=$((total_hoursWorked*HOUR_RATE))
echo "Total Wage : $total_wages"
;;
esac
