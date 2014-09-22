class configure_mysql {

exec {'download_dump':
command => '/usr/bin/wget --no-check-certificate https://raw.githubusercontent.com/rightscale/examples/unified_application/common/sql/app_test.sql',
cwd => '/tmp'
}


exec {'apply_dump':
command => '/usr/bin/mysql -uroot < /tmp/app_test.sql',
cwd => '/tmp'
}

exec {'add_user':
command => "/bin/echo "CREATE USER "user"@"localhost" IDENTIFIED BY 'pass';" | /usr/bin/mysql -uroot app_test' 
}

}
