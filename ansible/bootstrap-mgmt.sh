#!/usr/bin/env bash

# configure hosts file for our internal network defined by Vagrantfile
cat >> /etc/hosts <<EOL
# ansible 
10.0.15.10  mgmt

10.0.15.21  linux1
10.0.15.22  linux2
EOL

su - vagrant

cd /home/vagrant;ln -s /vagrant/playbook 
cp -rf /vagrant/playbook/.ssh /home/vagrant/
ssh-keyscan linux1 >> /home/vagrant/.ssh/known_hosts
ssh-keyscan linux2 >> /home/vagrant/.ssh/known_hosts

