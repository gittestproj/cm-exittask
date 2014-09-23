class configure_tomcat {

file {'/usr/share/tomcat6/lib/mysql-connector-java-5.1.13-bin.jar':
   ensure  => file,
   content => template('exittask/mysql-conn.jar'),
}


file {'/usr/share/tomcat6/conf/context.xml':
   ensure  => file,
   content => template('exittask/context.erb'),
   notify => exec['tomcat-restart']
}

exec {'tomcat-restart':
command => '/etc/init.d/tomcat6 restart'
}

}
