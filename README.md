Vagrant Recipes
=======================

This repository holds useful Vagrant Recipes. 

Installation
==============

Prerequistes
--------------

Vagrant would work out of box on Unix/Linux based system, but on windows it needs ssh shell.
The simplest way to get a neat ssh shell is to install github and put the github/bin in the PATH

 * github

Vagrant Setup
---------------

Install Vagrant from http://vagrantup.com
simply add HTTP_PROXY=http://<user>:<password>@<host>:<port> or HTTP_PROXY=http://<host>:<port>

e.g HTTP_PROXY = http://np-proxy5:80


Recipes
=========

1. Provisioning Virtual Box using Vagrant
------------------------------------------

[Recipe](https://github.com/rohitghatol/vagrant-recipies/tree/master/vagrant-virtualbox-simple) This Recipe describes the simplest case of setting up a Virtual Box using Vagrant


2. Provisioning AWS EC2 using Vagrant
---------------------------------------
[Recipe](https://github.com/rohitghatol/vagrant-recipies/tree/master/vagrant-aws-provider) This Recipe describes the steps required to Provision Amazon AWS EC2 machine using Vagrant

3. Provisioning Virtual Box behind Proxy using Vagrant
-------------------------------------------------------

[Recipe](https://github.com/rohitghatol/vagrant-recipies/tree/master/vagrant-virtualbox-proxy) This Recipe describes the steps to make Vagrant working behind Proxy. It also describes how to make your Virtual Machines (e.g Virtual Boxes) work behind Proxy.

