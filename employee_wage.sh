echo "Welcome to Employee Wage Computation"
isPresent=1
checkAttendance=$((RANDOM%2))
if [ $isPresent -eq $checkAttendance ] 

then echo -e "Employee is present\n"

else echo -e "Employee is absent\n"
	
fi

echo "Full-Time Employee: Enter 1"
echo -e "Part-Time Employee: Enter 2\n"

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

esac

