class configure_apache {

file {'/etc/httpd/conf.d/tomcat-vhost.conf':
   ensure  => file,
   content => template('exittask/tomcat-vhost.erb'),
   notify => exec['apache_reload'], 
  }

exec {'apache_reload':
command => '/etc/init.d/httpd graceful'
}

}
