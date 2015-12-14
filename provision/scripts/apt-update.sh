sudo sed -i 's!http://\(.*archive\|security\)\.ubuntu\.com!http://cn.archive.ubuntu.com!' /etc/apt/sources.list
sudo apt-get update
sudo apt-get install -y grub-pc
echo -e '#!/bin/bash\necho update-grub placeholder' > /tmp/update-grub.tmp
chmod a+x /tmp/update-grub.tmp
sudo bash -c 'mv /usr/sbin/update-grub /usr/sbin/update-grub.orig; mv /tmp/update-grub.tmp /usr/sbin/update-grub'
sudo apt-get -y upgrade
echo "Install common software ..."
sudo apt-get install -y software-properties-common
