node 'webapp' {

  host { 'webapp':
    ip => '192.168.33.10',
  }

  include tomcat
}
