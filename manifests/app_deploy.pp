class app_deploy{

exec {'download_app':
command => '/usr/bin/wget --no-check-certificate https://github.com/rightscale/examples/raw/unified_tomcat/dist/app_test.war',
cwd => '/var/lib/tomcat6/webapps',
creates => '/var/lib/tomcat6/webapps/app_test.war',
notify => exec['tomcat-restart']
}

exec {'tomcat-restart':
command => '/etc/init.d/tomcat6 restart'
}

}
