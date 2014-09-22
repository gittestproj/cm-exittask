class install_apache {

package {'httpd':
ensure => 'installed',
enable => true,
}

}
