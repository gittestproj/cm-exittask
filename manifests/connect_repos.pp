class connect_repos {

package {'rpmforge-release':
source => 'http://apt.sw.be/redhat/el6/en/x86_64/rpmforge/RPMS/rpmforge-release-0.5.2-2.el6.rf.x86_64.rpm',
ensure => installed,
}

package	{'epel-release':
source => 'http://download.fedora.redhat.com/pub/epel/6/x86_64/epel-release-6-5.noarch.rpm',
ensure => installed,
}

package	{'jpackage-utils':
source => 'http://mirrors.dotsrc.org/jpackage/6.0/generic/free/RPMS/jpackage-utils-5.0.0-7.jpp6.noarch.rpm',
ensure => installed,
}


}
