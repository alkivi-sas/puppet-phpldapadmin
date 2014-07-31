class phpldapadmin::install () {
  package { $phpldapadmin::params::phpldapadmin_package_name:
    ensure => installed,
  }
}
