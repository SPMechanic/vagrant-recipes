class tomcat::params {

$tomcat_download_url = $::hostname ? {
  default     => "http://mirror.cc.columbia.edu/pub/software/apache/tomcat/tomcat-8/v8.0.5/bin/apache-tomcat-8.0.5.tar.gz",
}
$tomcat_version = $::hostname ? {
  default     => "8.0.5",
}
$tomcat_base = $::hostname ? {
  default     => "/opt/tomcat/",
}

}