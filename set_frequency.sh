#!/bin/bash
OPTION=$(whiptail --title "SET FREQUENCY OF UPDATES" --menu "Choose your option" 15 60 4 \
"1" "Every hour" \
"2" "Once a day" \
"3" "Once a week" \
"4" "Once a month"  3>&1 1>&2 2>&3)
 
exitstatus=$?
if [ $exitstatus = 0 ]; then
    echo "Your chosen option:" $OPTION
else
    echo "You chose Cancel."
fi
