class configure_tomcat {

#file {'/usr/share/tomcat6/lib/mysql-connector-java-5.1.13-bin.jar':
#   ensure  => file,
#   content => template('exittask/mysql-conn.jar'),
#}

exec {'get_connector': 
command => '/usr/bin/wget http://sqlworkbench.mgm-tp.com/viewvc/trunk/sqlworkbench/junit/mysql-connector-java-5.1.13-bin.jar?revision=2294&pathrev=2294',
cwd => '/usr/share/tomcat6/lib'
}

file {'/usr/share/tomcat6/conf/context.xml':
   ensure  => file,
   content => template('exittask/context.erb'),
   notify => exec['tomcat_restart']
}

exec {'tomcat_restart':
command => '/etc/init.d/tomcat6 restart'
}

}
