class configure_tomcat {

file {'/etc/tomcat6/server.xml':
   ensure  => file,
   content => template('exittask/server.erb'),
   notify => exec['tomcat-restart']
}

exec {'tomcat-restart':
command => '/etc/init.d/tomcat6 restart'
}

}
