#!/bin/bash
set -x
sudo add-apt-repository "deb http://archive.ubuntu.com/ubuntu $(lsb_release -sc) main universe restricted multiverse"
sudo apt-get update
sudo apt-get install chntpw
read -p "Did you click on the hard drive on the left bar? Press enter to continue "

chntpw -i /media/ubuntu/*/Windows/System32/config/SAM
