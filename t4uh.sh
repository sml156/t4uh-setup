#apt update && apt -y upgrade

mkdir t4uh-setup
cd t4uh-setup

# do a little house cleaning
apt -y autoclean
apt -y autoremove

# airgeddon, Even though it's not working properly right now
git clone https://github.com/v1s1t0r1sh3r3/airgeddon.git 1>/dev/null && echo "OK airgeddon Downloaded"  || echo "airgeddon Failed"
cd airgeddon
ls
#bash airgeddon.sh

# 2 or 3 of these is for airgeddon, about 3 are for wifite but
# the rest are for stuff that I probably will never remember 
wget -qO - https://raw.githubusercontent.com/sml156/t4uh-setup/master/add-packages-list.txt > add-packages-list.txt 1>/dev/null && echo "OK add-packages Downloaded"  || echo "add-packages Failed"
#apt -y install $(cat add-packages-list.txt | xargs)

# This is only needed if the kernel gets updated, It's harmless if it has not been.
# If your USB adapter stops working one day your going to have to restore a backup
# and wait till the dev updates the t4uh drivers for the newer kernel.
# -- You do backup you Virtual Machine before running this don't you. --
apt -y install linux-headers-`uname -r`

# Install the t4uh driver
git clone -b v5.2.20 https://github.com/aircrack-ng/rtl8812au.git 1>/dev/null && echo "OK t4uh driver"  || echo "t4uh driver"
cd rtl8812au
ls
#bash dkms-install.sh

# Wifite is broken, It needs to be reinstalled
git clone https://github.com/derv82/wifite2.git 1>/dev/null && echo "OK Wifite Downloaded"  || echo "Wifite Failed"
cd wifite2
ls
#python setup.py install

echo " ##########################################################  "
echo " You Need To Reboot now  "
echo " ##########################################################  "
