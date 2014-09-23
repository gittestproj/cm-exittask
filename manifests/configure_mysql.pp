class configure_mysql {

exec {'download_dump':
command => '/usr/bin/wget --no-check-certificate https://raw.githubusercontent.com/rightscale/examples/unified_application/common/sql/app_test.sql',
cwd => '/tmp'
notify => exec['apply_dump']
}


exec {'apply_dump':
command => '/usr/bin/mysql -uroot < /tmp/app_test.sql',
cwd => '/tmp'
}

file {'/tmp/db_prepare.sql':
   ensure  => file,
   content => template('exittask/db_prepare.sql'),
   notify => exec['add_user']
}


exec {'add_user':
command => "/usr/bin/mysql -uroot < /tmp/db_prepare.sql", 
}

}
