# !/bin/bash -x

PRESENT=1;
PART_TIME=2;
PAY_PER_HOUR=20;
Max_Working_Day=20;
Max_Working_Hr=40;

totalWorkingHr=0;

day=0;

while [[ $day -lt $Max_Working_Day && $(($totalWorkingHr+4)) -lt $Max_Working_Hr ]]
do

empCheck=$((RANDOM%3));

case $empCheck in

         $PRESENT)

               empHr=8;
;;
   $PART_TIME)

       empHr=4;
;;
   *)

   empHr=0;

;;

esac;

totalWorkingHr=$(($totalWorkimgHr + $empHr));
((day++));

done

salary=$ (($totalWorkingHr * $PAY_PER_HOUR));

echo "Emp Salary of Month : $Salary (Total Working Hour : $totalWorkingHr)"
