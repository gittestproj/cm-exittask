class exittask {

class {'connect_repos': }
class {'install_java': 
require => Class["connect_repos"]
}
class {'install_tomcat': 
require => Class["connect_repos"]
}
class {'install_apache': 
require => Class["connect_repos"]
}
class {'install_mysql': 
require => Class["connect_repos"]
}
class {'configure_apache': 
require => Class["install_apache"]
}
class {'configure_tomcat': 
require => Class["install_tomcat"]
}
class {'configure_mysql': 
require => Class["install_mysql"]
}
class {'app_deploy': 
require => Class["install_tomcat"]
}
}
