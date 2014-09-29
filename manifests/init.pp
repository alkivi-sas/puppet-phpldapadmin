class phpldapadmin (
  $serverName = 'Alkivi',
  $domain_name,
  $base,

) {

  #if ! defined(Class['apache']) {
  #  fail('You must include the apache base before using php ldap admin')
  #}
  #else
  #{
  #  # declare vhost
  #  apache::vhost { 'ldap':
  #    priority         => '002',
  #    servername       => "ldap.${domain_name}",
  #    port             => '443',
  #    ssl              => true,
  #    ssl_cert         => '/home/alkivi/www/ssl/alkivi.crt',
  #    ssl_key          => '/home/alkivi/www/ssl/alkivi.key',
  #    docroot          => '/usr/share/phpldapadmin/htdocs',
  #    logroot          => '/home/alkivi/www/log',
  #    access_log       => false,
  #    override         => ['All'],
  #    error_log_syslog => 'syslog',
  #    custom_fragment  => 'CustomLog /home/alkivi/www/log/apache_access.log combined
  #    ',
  #    directories      => [
  #      { 
  #      path           => '/usr/share/phpldapadmin/htdocs',
  #      options        => 'ExecCGI FollowSymlinks',
  #      allow_override => ['Limit','AuthConfig'],
  #      order          => ['allow','deny'],
  #      },
  #      ],
  #  }
  #  
  #}


  # declare all parameterized classes
  class { phpldapadmin::params: }
  class { phpldapadmin::install: }
  class { phpldapadmin::config: }
  class { phpldapadmin::service: }

  # declare relationships
  Class['phpldapadmin::params'] -> 
  Class['phpldapadmin::install'] -> 
  Class['phpldapadmin::config'] -> 
  Class['phpldapadmin::service']
}

