#!/bin/bash
URL=$(whiptail --title "SET YOUR REMOTE REPO GIT URL" --inputbox "Enter Git URL to the git remote repository from which updates will be fetched from" 10 60 https://github.com/vmalombe/Pi_LED_Blinking.git 3>&1 1>&2 2>&3)
 
exitstatus=$?
if [ $exitstatus = 0 ]; then
    echo "Git URL to remote git repo:" $URL
    echo | openssl s_client -connect www.github.com:443 2>&1 | sed --quiet '/-BEGIN CERTIFICATE-/,/-END CERTIFICATE-/p' > github.crt
    git clone $URL
else
    echo "You chose Cancel."
fi
