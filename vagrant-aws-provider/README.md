Using Vagrant to provision Machines on AWS
============================================

Install Vagrant Plugin 
------------------------
Install the Vagrant AWS Plugin

`$>vagrant plugin install vagrant-aws`

Download the Vagrant Box for AWS
---------------------------------

We need to download a box which we can use with vagrant aws plugin

`$>vagrant box add dummy https://github.com/mitchellh/vagrant-aws/raw/master/dummy.box`

Modify the Vagrantfile to provide Region and ami image
------------------------------------------------------

You can override the AWS region where you want to provision your machine. You can also change the ami image you want to load in these machines

 * `aws.region = "us-east-1"`

 * `aws.ami = "ami-7747d01e"`


Get AWS Access Key and Secret from AWS
---------------------------------------
Head over to your AWS Account and proceed to Security Credentials

![Screen shot 1](https://raw.github.com/rohitghatol/vagrant-getting-started/master/vagrant-aws-provider/images/screenshot-01.png)


Expand "Access Keys" and click on "Create New Access Key" button


![Screen shot 2](https://raw.github.com/rohitghatol/vagrant-getting-started/master/vagrant-aws-provider/images/screenshot-02.png)


This will give you a "Access Key ID" and "Secret Access Key". 


![Screen shot 3](https://raw.github.com/rohitghatol/vagrant-getting-started/master/vagrant-aws-provider/images/screenshot-03.png)


Replace the Access Key ID and Secret Access Key in the "Vagrantfile" with the above

`aws.access_key_id = "<<aws_access_key>>"`

`aws.secret_access_key = "<<aws secret access key>>"`

Configure Security Groups to allow SSH access to the EC2 Machine
------------------------------------------------------------------

![Screen shot 4](https://raw.github.com/rohitghatol/vagrant-getting-started/master/vagrant-aws-provider/images/screenshot-04.png)

![Screen shot 5](https://raw.github.com/rohitghatol/vagrant-getting-started/master/vagrant-aws-provider/images/screenshot-05.png)

![Screen shot 7](https://raw.github.com/rohitghatol/vagrant-getting-started/master/vagrant-aws-provider/images/screenshot-06.png)

![Screen shot 7](https://raw.github.com/rohitghatol/vagrant-getting-started/master/vagrant-aws-provider/images/screenshot-07.png)


Generate Key Pair to access Virutal Machine via SSH
------------------------------------------------------------------

![Screen shot 8](https://raw.github.com/rohitghatol/vagrant-getting-started/master/vagrant-aws-provider/images/screenshot-08.png)


![Screen shot 9](https://raw.github.com/rohitghatol/vagrant-getting-started/master/vagrant-aws-provider/images/screenshot-09.png)


This will also download a file named vagrant.pem file. Copy vagrant.pem file next to Vagrantfile for aws provisioning. 

 * Tell AWS to use vagrant key pair on the server while setting up the machine 
   * `aws.keypair_name = "vagrant"`
 * Tell Vagrant to use the "vagrant.pem" file for doing ssh to Ec2 machines
   * `override.ssh.username = "ubuntu"`
   * `override.ssh.private_key_path = "./vagrant.pem"`

Fire Vagrant to provision AWS Machine
--------------------------------------

To provision machines on Amazon AWS use command 

`$>vagrant up --provider=aws`

To ssh into these machine, use the regular 

`$>vagrant ssh`


To destroy these machines, use the regular

`$>vagrant destroy --force`




References

 * https://github.com/mitchellh/vagrant-aws
