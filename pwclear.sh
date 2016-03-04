#!/bin/bash
set -x
sudo add-apt-repository "deb http://archive.ubuntu.com/ubuntu $(lsb_release -sc) main universe restricted multiverse"
sudo apt-get update
sudo apt-get install chntpw
sudo apt-get install expect
read -p "Did you click on the hard drive on the left bar? Press enter to continue"
chntpw /media/ubuntu/*/Windows/System32/config/SAM
echo -n "Process is complete, press enter to shutdown or n+enter to cancel"
read answer
if [answer == 'n'] then
	exit 1
else
	sudo shutdown now
fi
