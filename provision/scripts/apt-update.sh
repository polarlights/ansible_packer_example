sudo sed -i 's!http://\(.*archive\|security\)\.ubuntu\.com!http://cn.archive.ubuntu.com!' /etc/apt/sources.list
sudo apt-get update
sudo su -c "echo 'set grub-pc/install_devices /dev/sda' | debconf-communicate"
sudo apt-get -y upgrade
echo "Install common software ..."
sudo apt-get install -y software-properties-common
