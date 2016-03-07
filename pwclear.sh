#!/bin/bash
sudo mkdir /media/windoze
sudo mount -t ntfs-3g -o remove_hiberfile /dev/sda2 /media/windoze
set -x
sudo add-apt-repository "deb http://archive.ubuntu.com/ubuntu $(lsb_release -sc) main universe restricted multiverse"
sudo apt-get update
sudo apt-get install chntpw
sudo apt-get install expect
sudo chntpw -i /media/windoze/Windows/System32/config/SAM
