wget -qO - https://raw.githubusercontent.com/sml156/t4uh-setup/master/update.txt > update.txt
sleep 5

# apt update && apt -y upgrade
echo "clean up some crap"
apt -y autoclean
apt -y autoremove



apt -y install $(cat update.txt | xargs)

apt install linux-headers-`uname -r`


git clone -b v5.2.20 https://github.com/aircrack-ng/rtl8812au.git
cd rtl*
bash dkms-install.sh


