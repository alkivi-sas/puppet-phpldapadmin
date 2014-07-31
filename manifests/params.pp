class phpldapadmin::params () {
  case $operatingsystem {
    /(Ubuntu|Debian)/: {
      $phpldapadmin_package_name   = 'phpldapadmin'
    }
    default: {
      fail("Module ${module_name} is not supported on ${operatingsystem}")
    }
  }
}

