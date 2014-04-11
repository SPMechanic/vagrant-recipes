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

