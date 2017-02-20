# Ansible

# pour initialiser les clef ssh avec les linux :


## machine

  - web
  - dev
  - linux1
  - linux2
  - linux3

## description
multiple machine for ansible test 
create with a loop 


## log `$ time vagrant up | tee /dev/tty |clip`

```
real    2m44.156s
user    0m0.061s
sys     0m0.061s
```

```
Bringing machine 'web' up with 'virtualbox' provider...
Bringing machine 'db' up with 'virtualbox' provider...
Bringing machine 'linux1' up with 'virtualbox' provider...
Bringing machine 'linux2' up with 'virtualbox' provider...
Bringing machine 'linux3' up with 'virtualbox' provider...
==> web: Checking if box 'ubuntu/trusty64' is up to date...
==> web: A newer version of the box 'ubuntu/trusty64' is available! You currently
==> web: have version '20161129.0.0'. The latest is version '20161214.0.1'. Run
==> web: `vagrant box update` to update.
==> web: Clearing any previously set forwarded ports...
==> web: Clearing any previously set network interfaces...
==> web: Preparing network interfaces based on configuration...
    web: Adapter 1: nat
==> web: Forwarding ports...
    web: 80 (guest) => 5678 (host) (adapter 1)
    web: 22 (guest) => 2222 (host) (adapter 1)
==> web: Booting VM...
==> web: Waiting for machine to boot. This may take a few minutes...
    web: SSH address: 127.0.0.1:2222
    web: SSH username: vagrant
    web: SSH auth method: private key
==> web: Machine booted and ready!
==> web: Checking for guest additions in VM...
    web: The guest additions on this VM do not match the installed version of
    web: VirtualBox! In most cases this is fine, but in rare cases it can
    web: prevent things such as shared folders from working properly. If you see
    web: shared folder errors, please make sure the guest additions within the
    web: virtual machine match the version of VirtualBox you have installed on
    web: your host and reload your VM.
    web: 
    web: Guest Additions Version: 4.3.36
    web: VirtualBox Version: 5.1
==> web: Mounting shared folders...
    web: /vagrant => C:/dev/vagrant/ansible
==> web: Machine already provisioned. Run `vagrant provision` or use the `--provision`
==> web: flag to force provisioning. Provisioners marked to run always will still run.
==> db: Checking if box 'ubuntu/trusty64' is up to date...
==> db: A newer version of the box 'ubuntu/trusty64' is available! You currently
==> db: have version '20161129.0.0'. The latest is version '20161214.0.1'. Run
==> db: `vagrant box update` to update.
==> db: Clearing any previously set forwarded ports...
==> db: Fixed port collision for 22 => 2222. Now on port 2200.
==> db: Clearing any previously set network interfaces...
==> db: Preparing network interfaces based on configuration...
    db: Adapter 1: nat
==> db: Forwarding ports...
    db: 80 (guest) => 6789 (host) (adapter 1)
    db: 22 (guest) => 2200 (host) (adapter 1)
==> db: Booting VM...
==> db: Waiting for machine to boot. This may take a few minutes...
    db: SSH address: 127.0.0.1:2200
    db: SSH username: vagrant
    db: SSH auth method: private key
==> db: Machine booted and ready!
==> db: Checking for guest additions in VM...
    db: The guest additions on this VM do not match the installed version of
    db: VirtualBox! In most cases this is fine, but in rare cases it can
    db: prevent things such as shared folders from working properly. If you see
    db: shared folder errors, please make sure the guest additions within the
    db: virtual machine match the version of VirtualBox you have installed on
    db: your host and reload your VM.
    db: 
    db: Guest Additions Version: 4.3.36
    db: VirtualBox Version: 5.1
==> db: Mounting shared folders...
    db: /vagrant => C:/dev/vagrant/ansible
==> db: Machine already provisioned. Run `vagrant provision` or use the `--provision`
==> db: flag to force provisioning. Provisioners marked to run always will still run.
==> linux1: Checking if box 'ubuntu/trusty64' is up to date...
==> linux1: A newer version of the box 'ubuntu/trusty64' is available! You currently
==> linux1: have version '20161129.0.0'. The latest is version '20161214.0.1'. Run
==> linux1: `vagrant box update` to update.
==> linux1: Clearing any previously set forwarded ports...
==> linux1: Fixed port collision for 22 => 2222. Now on port 2201.
==> linux1: Clearing any previously set network interfaces...
==> linux1: Preparing network interfaces based on configuration...
    linux1: Adapter 1: nat
==> linux1: Forwarding ports...
    linux1: 22 (guest) => 2201 (host) (adapter 1)
==> linux1: Booting VM...
==> linux1: Waiting for machine to boot. This may take a few minutes...
    linux1: SSH address: 127.0.0.1:2201
    linux1: SSH username: vagrant
    linux1: SSH auth method: private key
==> linux1: Machine booted and ready!
==> linux1: Checking for guest additions in VM...
    linux1: The guest additions on this VM do not match the installed version of
    linux1: VirtualBox! In most cases this is fine, but in rare cases it can
    linux1: prevent things such as shared folders from working properly. If you see
    linux1: shared folder errors, please make sure the guest additions within the
    linux1: virtual machine match the version of VirtualBox you have installed on
    linux1: your host and reload your VM.
    linux1: 
    linux1: Guest Additions Version: 4.3.36
    linux1: VirtualBox Version: 5.1
==> linux1: Mounting shared folders...
    linux1: /vagrant => C:/dev/vagrant/ansible
==> linux1: Machine already provisioned. Run `vagrant provision` or use the `--provision`
==> linux1: flag to force provisioning. Provisioners marked to run always will still run.
==> linux2: Checking if box 'ubuntu/trusty64' is up to date...
==> linux2: A newer version of the box 'ubuntu/trusty64' is available! You currently
==> linux2: have version '20161129.0.0'. The latest is version '20161214.0.1'. Run
==> linux2: `vagrant box update` to update.
==> linux2: Clearing any previously set forwarded ports...
==> linux2: Fixed port collision for 22 => 2222. Now on port 2202.
==> linux2: Clearing any previously set network interfaces...
==> linux2: Preparing network interfaces based on configuration...
    linux2: Adapter 1: nat
==> linux2: Forwarding ports...
    linux2: 22 (guest) => 2202 (host) (adapter 1)
==> linux2: Booting VM...
==> linux2: Waiting for machine to boot. This may take a few minutes...
    linux2: SSH address: 127.0.0.1:2202
    linux2: SSH username: vagrant
    linux2: SSH auth method: private key
==> linux2: Machine booted and ready!
==> linux2: Checking for guest additions in VM...
    linux2: The guest additions on this VM do not match the installed version of
    linux2: VirtualBox! In most cases this is fine, but in rare cases it can
    linux2: prevent things such as shared folders from working properly. If you see
    linux2: shared folder errors, please make sure the guest additions within the
    linux2: virtual machine match the version of VirtualBox you have installed on
    linux2: your host and reload your VM.
    linux2: 
    linux2: Guest Additions Version: 4.3.36
    linux2: VirtualBox Version: 5.1
==> linux2: Mounting shared folders...
    linux2: /vagrant => C:/dev/vagrant/ansible
==> linux2: Machine already provisioned. Run `vagrant provision` or use the `--provision`
==> linux2: flag to force provisioning. Provisioners marked to run always will still run.
==> linux3: Importing base box 'ubuntu/trusty64'...

[KProgress: 90%
[K==> linux3: Matching MAC address for NAT networking...
==> linux3: Checking if box 'ubuntu/trusty64' is up to date...
==> linux3: A newer version of the box 'ubuntu/trusty64' is available! You currently
==> linux3: have version '20161129.0.0'. The latest is version '20161214.0.1'. Run
==> linux3: `vagrant box update` to update.
==> linux3: Setting the name of the VM: ansible_linux3_1483646370140_9619
==> linux3: Clearing any previously set forwarded ports...
==> linux3: Fixed port collision for 22 => 2222. Now on port 2203.
==> linux3: Clearing any previously set network interfaces...
==> linux3: Preparing network interfaces based on configuration...
    linux3: Adapter 1: nat
==> linux3: Forwarding ports...
    linux3: 22 (guest) => 2203 (host) (adapter 1)
==> linux3: Booting VM...
==> linux3: Waiting for machine to boot. This may take a few minutes...
    linux3: SSH address: 127.0.0.1:2203
    linux3: SSH username: vagrant
    linux3: SSH auth method: private key
    linux3: 
    linux3: Vagrant insecure key detected. Vagrant will automatically replace
    linux3: this with a newly generated keypair for better security.
    linux3: 
    linux3: Inserting generated public key within guest...
    linux3: Removing insecure key from the guest if it's present...
    linux3: Key inserted! Disconnecting and reconnecting using new SSH key...
==> linux3: Machine booted and ready!
==> linux3: Checking for guest additions in VM...
    linux3: The guest additions on this VM do not match the installed version of
    linux3: VirtualBox! In most cases this is fine, but in rare cases it can
    linux3: prevent things such as shared folders from working properly. If you see
    linux3: shared folder errors, please make sure the guest additions within the
    linux3: virtual machine match the version of VirtualBox you have installed on
    linux3: your host and reload your VM.
    linux3: 
    linux3: Guest Additions Version: 4.3.36
    linux3: VirtualBox Version: 5.1
==> linux3: Mounting shared folders...
    linux3: /vagrant => C:/dev/vagrant/ansible
==> linux3: Running provisioner: shell...
    linux3: Running: inline script
==> linux3: stdin: is not a tty
==> linux3: Hello
==> linux3: Running provisioner: shell...
    linux3: Running: inline script
==> linux3: stdin: is not a tty
==> linux3: hello from linux 3
```
