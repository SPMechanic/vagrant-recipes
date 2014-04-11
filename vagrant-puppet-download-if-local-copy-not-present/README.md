Vagrant Puppet Example to download a file if not provided in puppet/files folder
==========================
This is an example of vagrant using puppet. While Puppet provisions machines, often it needs to download and install packages.

Scenario
-------
Say we want to install tomcat 8 by downloading apache-tomcat-8.0.5.tar.gz file from its server. We can always write a Exec {wget} command to download the file
and then untar it. However there are 2 scenarios to consider


Developer Machine Scenario
-------
If a Developer is behind corporate firewall/slow network, and he/she is provisioning 4-5 virtual machines all requiring tomcat, then
for each of the virtual machines, the apache-tomcat-8.0.5.tar.gz file would be downloaded 4-5 times.

Another way to make this work is to actually keep apache-tomcat-8.0.5.tar.gz in the <vagrant_home>>\puppet\modules\tomcat\files folder
and copy that using following code

      file {"copy apache-tomcat-8.0.5.tar.gz":
          source => "puppet:///modules/tomcat/apache-tomcat-8.0.5.tar.gz",
          path => "/opt/tomcat/apache-tomcat-8.0.5.tar.gz",
      }

Now this works great for developers and Vagrant would copy over that file from local machine to all virtual machines.
But this doesn't work so well when we do production deployment to Amazon AWS


Production Scenario
----------
Like we said before if we were doing this for Amazon AWS a simple Exec {wget} command would work much better.

      exec { "download tomcat":
        cwd => "/opt/tomcat",
        command => "wget http://mirror.cc.columbia.edu/pub/software/apache/tomcat/tomcat-8/v8.0.5/bin/apache-tomcat-8.0.5.tar.gz",
      }

Hybrid Scenario
-----------
We can also think of a hybrid scenario which works the "Develper Machine Scenario" way if the apache-tomcat-8.0.5.tar.gz" file
is present in files directory, and if not then it is downloaded from internet

Here is what we came up with

  class tomcat {
  
  require tomcat::params
  
    file {"create /opt/tomcat":
      path=>"/opt/tomcat",
      ensure => directory
    }
  
    file {"copy apache-tomcat-8.0.5.tar.gz":
      source => "puppet:///modules/tomcat/apache-tomcat-8.0.5.tar.gz",
      path => "/opt/tomcat/apache-tomcat-8.0.5.tar.gz",
      require => File["create /opt/tomcat"],
      #before => Exec["download tomcat"]
    }
  
    exec { "download tomcat":
      unless => ["test -f /opt/tomcat/apache-tomcat-8.0.5.tar.gz"],
      path=> "/usr/bin:/usr/sbin:/bin",
      cwd => "/opt/tomcat",
      command => "wget http://mirror.cc.columbia.edu/pub/software/apache/tomcat/tomcat-8/v8.0.5/bin/apache-tomcat-8.0.5.tar.gz",
      require => File["create /opt/tomcat"],
    }
  }




