Vagrant Getting Started
=======================

This Vagrant Getting Started Guide

Prerequistes
--------------

Vagrant would work out of box on Unix/Linux based system, but on windows it needs ssh shell.
The simplest way to get a neat ssh shell is to install github and put the github/bin in the PATH

 * github

Vagrant Setup
---------------

Install Vagrant from http://vagrantup.com


Proxy Setting for Vagrant downloads
------------------------------------

Vagrant needs to download following

 * Vagrant Boxes e.g http://files.vagrantup.com/precise32.box
 * Vagrant plugins e.g vagrant proxyconf or aws plugin

If you are behind a corporate firewall and need to explicitly add proxy settings to your application, then 
follow the instructions below to add proxy settings to Vagant

Vagrant is based on Ruby, hence for providing Vagrant with information to work in a proxy environment,
simply add HTTP_PROXY=http://<user>:<password>@<host>:<port> or HTTP_PROXY=http://<host>:<port>

e.g HTTP_PROXY = http://np-proxy5:80


