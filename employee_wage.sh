echo "Welcome to Employee Wage Computation"
isPresent=1
checkAttendance=$((RANDOM%2))
if [ $isPresent -eq $checkAttendance ] 

then echo -e "Employee is present\n"

else echo -e "Employee is absent\n"

fi


echo "Calculate Daily Wage"
wage_perhour=20
full_dayhour=8

mul=$(($wage_perhour*$full_dayhour))
echo -e "Daily Employee Wage $mul\n"
