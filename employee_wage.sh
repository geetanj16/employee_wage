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


echo "Calculate Daily Wage" 
wage_perhour=20 
full_dayhour=8

mul=$(($wage_perhour*$full_dayhour))
echo -e "Daily Employee Wage $mul\n"

;;

2)
echo "Calculate Part-Time Employee Wage"
echo "Enter your part-time working hour"
read part_time

wage_perhour=20

mul=$(($part_time*$wage_perhour))
echo -e "Part-Time Employee Wage $mul\n"

esac

