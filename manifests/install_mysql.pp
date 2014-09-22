class install_mysql{

package {'mysql':
ensure => 'installed'
}

service {'mysql':
ensure => 'running',
enable => true,
}

}
