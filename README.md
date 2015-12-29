This is an example configrations for [ansible](www.ansible.com) and [packer](http://www.packer.io), along with [docker](https://www.docker.com/).
 
# Prepare

The example scripts are tested under MacOSX. The scripts that install the required software may be different.

- Install [VirtualBox](https://www.virtualbox.org/wiki/Downloads)
- Install [vagrant](https://www.vagrantup.com/downloads.html)
- Install packer.

```bash
brew install packer
```

- Install ansible

Make sure python is installed.

```bash
sudo easy_install pip

pip install ansible
```

- Install aws-cli

```bash
pip install awscli
```

# Test local

## 1. Add vagrant box

```bash
vagrant init

vagrant box add ubuntu/trusty64
```
Change vagrant configration, ie. Vagrantfile.

```ruby
config.vm.network :forwarded_port, guest: 22, host: 2222, host_ip: "0.0.0.0", id: "ssh", auto_correct: true)
```

## 2. Clone thie repository

```bash
git clone https://github.com/polarlights/ansible_packer_example.git
```

## 3. Build image

```bash
packer build -var-file=templates/development/variables.json templates/development/mysql.json
```

# Deploy to AWS

TBD

# TODO

- [*] basic ansible scripts.
- [] integrate with packer.
- [ ] add configration for nginx.
- [ ] add configration for docker.
