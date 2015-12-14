if ! [ -a "/etc/apt/sources.list.d/ansible-ansible-trusty.list" ]; then sudo apt-add-repository -y ppa:ansible/ansible; fi
sudo apt-get update
echo "Install ansible ..."
sudo apt-get install -y ansible
