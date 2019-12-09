wget -qO - https://raw.githubusercontent.com/sml156/t4uh-setup/master/update.txt > update.txt
git clone -b v5.2.20 https://github.com/aircrack-ng/rtl8812au.git


"clean up some crap"
apt -y autoclean
apt -y autoremove


echo " Download extra stuff  "
apt -y install $(cat update.txt | xargs)

apt -y install linux-headers-`uname -r`



cd rtl*
bash dkms-install.sh

echo " ##########################################################  "
echo " You Need To Reboot now  "
echo " ##########################################################  "


