# Summary
#   Operating system-related variables and others.


#commented out for Hiera


#params.pp example overridden with Hiera
#class apache::params {
#  $install_ensure = 'present'

#  case $::osfamily {
#    'RedHat': {
#      $install_name = 'httpd'
#    }
#    'Debian': {
#      $install_name = 'apache2'
#    }
#  }
#}
