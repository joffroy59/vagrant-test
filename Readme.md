# VAGRANT projects

## MULTI-MACHINE
start with :`$ vagrant.exe up`

connect to machine web : `$ vagrant.exe ssh web`

connect to machine db  : `$ vagrant.exe ssh db`

log :
```
Bringing machine 'web' up with 'virtualbox' provider...
Bringing machine 'db' up with 'virtualbox' provider...
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
    web: /vagrant => C:/dev/vagrant/MULTI-MACHINE
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
    db: /vagrant => C:/dev/vagrant/MULTI-MACHINE
==> db: Machine already provisioned. Run `vagrant provision` or use the `--provision`
==> db: flag to force provisioning. Provisioners marked to run always will still run.
```

test : `$ curl http://localhost:6789 `
<h1>Index of /</h1>
  <table>
   <tr><th valign="top"><img src="/icons/blank.gif" alt="[ICO]"></th><th><a href="?C=N;O=D">Name</a></th><th><a href="?C=M;O=A">Last modified</a></th><th><a href="?C=S;O=A">Size</a></th><th><a href="?C=D;O=A">Description</a></th></tr>
   <tr><th colspan="5"><hr></th></tr>
<tr><td valign="top"><img src="/icons/unknown.gif" alt="[   ]"></td><td><a href="Vagrantfile">Vagrantfile</a></td><td align="right">2017-01-05 19:08  </td><td align="right">457 </td><td>&nbsp;</td></tr>
<tr><td valign="top"><img src="/icons/text.gif" alt="[TXT]"></td><td><a href="bootstrap.sh">bootstrap.sh</a></td><td align="right">2017-01-05 19:08  </td><td align="right">341 </td><td>&nbsp;</td></tr>
   <tr><th colspan="5"><hr></th></tr>
</table>
<address>Apache/2.4.7 (Ubuntu) Server at localhost Port 6789</address>

```
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 3.2 Final//EN">
<html>
 <head>
  <title>Index of /</title>
 </head>
 <body>
<h1>Index of /</h1>
  <table>
   <tr><th valign="top"><img src="/icons/blank.gif" alt="[ICO]"></th><th><a href="?C=N;O=D">Name</a></th><th><a href="?C=M;O=A">Last modified</a></th><th><a href="?C=S;O=A">Size</a></th><th><a href="?C=D;O=A">Description</a></th></tr>
   <tr><th colspan="5"><hr></th></tr>
<tr><td valign="top"><img src="/icons/unknown.gif" alt="[   ]"></td><td><a href="Vagrantfile">Vagrantfile</a></td><td align="right">2017-01-05 19:08  </td><td align="right">457 </td><td>&nbsp;</td></tr>
<tr><td valign="top"><img src="/icons/text.gif" alt="[TXT]"></td><td><a href="bootstrap.sh">bootstrap.sh</a></td><td align="right">2017-01-05 19:08  </td><td align="right">341 </td><td>&nbsp;</td></tr>
   <tr><th colspan="5"><hr></th></tr>
</table>
<address>Apache/2.4.7 (Ubuntu) Server at localhost Port 6789</address>
</body></html>

```

test 2 : `$ curl http://localhost:6789/Vagrantfile`
```
Vagrant.configure("2") do |config|
  config.vm.provision "shell", inline: "echo Hello"

  config.vm.define "web" do |web|
    web.vm.box = "ubuntu/trusty64"
	web.vm.provision :shell, path: "bootstrap.sh"
	web.vm.network :forwarded_port, guest: 80, host: 5678
  end

  config.vm.define "db" do |db|
    db.vm.box = "ubuntu/trusty64"
	db.vm.provision :shell, path: "bootstrap.sh"
	db.vm.network :forwarded_port, guest: 80, host: 6789
  end
end

```
