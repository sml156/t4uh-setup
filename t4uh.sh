

apt update && apt upgrade
echo "clean up some crap"
apt -y autoclean
apt -y autoremove

echo "install stuff"

apt install $(cat update.txt | xargs)

echo"This will probably error but it don't matter"
apt install linux-headers-`uname -r`

echo "Install the USB drivers"
git clone -b v5.2.20 https://github.com/aircrack-ng/rtl8812au.git
cd rtl*
bash dkms-install.sh
