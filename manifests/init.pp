class exittask {

class {'connect_repos': }
class {'install_java': }
class {'install_tomcat': }
class {'install_apache': }
class {'install_mysql': }
class {'configure_apache': 
require => Class["install_apache"]
}
class {'configure_tomcat': 
require => Class["install_tomcat"]
}
class {'configure_mysql': 
require => Class["install_mysql"]
}
class {'app_deploy': }
}
