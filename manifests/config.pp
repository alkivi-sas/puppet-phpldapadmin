class phpldapadmin::config () {
  File {
    ensure => present,
    owner  => 'root',
    group  => 'www-data',
    mode   => '0640',
  }

  file { '/etc/phpldapadmin/config.php':
    content => template('phpldapadmin/config.php.erb')
  }
}
