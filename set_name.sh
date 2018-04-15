#!/bin/bash
PET=$(whiptail --title "SET LOCAL REPO NAME" --inputbox "Name/path of directory with files/scripts to update" 10 60 AutoUpdatePlugin 3>&1 1>&2 2>&3)
 
exitstatus=$?
if [ $exitstatus = 0 ]; then
    echo "Script name:" $PET
else
    echo "You chose Cancel."
fi
