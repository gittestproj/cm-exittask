class install_tomcat{

package {'tomcat6':
ensure => 'latest'
}

service {'tomcat6':
ensure => 'running',
enable => true,
}

}
