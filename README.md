![Vagrant Recipes](https://raw.github.com/rohitghatol/vagrant-recipes/master/images/vagrant-recipes.png)
=======================
Vagrant is the new required tool for DevOps work, especially from the developer's side. A Developer would typically setup few Virtual Box on his/her machine, mimicing closely a production environment and then do development using them. The Developer would also share the Vagrantfile and underlyving provisioninig configuration e.g Puppet/Chef/Shell Scripts with the DevOps to share as a working document and software how the/she provisioned their machines.

This way DevOps can replicate the same environment, further refine them and share it back with the dev team.




Installation
==============

Prerequistes
--------------

### SSH - Only for Windows
Vagrant would work out of box on Unix/Linux based system, but on windows it needs ssh shell.
The simplest way to get a neat ssh shell is to 

 * Install github and 
 * put the github/bin in the PATH

### Virtual Box
The simplest of the Vagrant example is to provision the free Virtual Box with ubuntu linux machine. Hence we need the latest version of Virtual Box installed


Vagrant Setup
---------------
Install Vagrant from http://vagrantup.com . Add vagrant/bin to the PATH


Recipes
--------

### 1. Provisioning Virtual Box using Vagrant

[See the Recipe](https://github.com/rohitghatol/vagrant-recipies/tree/master/vagrant-virtualbox-simple) 

This Recipe describes the simplest case of setting up a Virtual Box using Vagrant


### 2. Provisioning AWS EC2 using Vagrant

[See the Recipe](https://github.com/rohitghatol/vagrant-recipies/tree/master/vagrant-aws-provider) 

This Recipe describes the steps required to Provision Amazon AWS EC2 machine using Vagrant

### 3. Provisioning Virtual Box behind Proxy using Vagrant


[See the Recipe](https://github.com/rohitghatol/vagrant-recipies/tree/master/vagrant-virtualbox-proxy) 

This Recipe describes the steps to make Vagrant working behind Proxy. It also describes how to make your Virtual Machines (e.g Virtual Boxes) work behind Proxy.

### 4. Vagrant with Puppet -  Download Files for Installation if not locally provided

[See the Recipe](https://github.com/rohitghatol/vagrant-recipies/tree/master/vagrant-puppet-download-if-local-copy-not-present/)


References 
-----------

 * http://www.vagrantup.com/
 * https://github.com/mitchellh/vagrant-aws
 * https://github.com/tmatilai/vagrant-proxyconf
