Vagrant Virtual Box Simple
==========================
This is an example of the simplest kind of Vagrantfile. This file configures a virtual machine named 'default' from a preexisting vagrant box named precise32 located at http://files.vagrantup.com/precise32.box

Vagrantfile
-----------

`VAGRANTFILE_API_VERSION = "2"`

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.box = "precise32"

  config.vm.box_url = "http://files.vagrantup.com/precise32.box"

end

Commands
---------

Say our vagrant file is located in /user/rohit/vagrant-project

$>cd /user/rohit/vagrant-project

Run 'vagrant up' to start the virtual file

$>vagrant up

Once vagrant up successfully finishes, then ssh into the default virtual machine

$>vagrant ssh

To suspend the virtual machine run

$>vagrant suspend

To destroy the virtual machine altogether

$>vagrant destroy --force
