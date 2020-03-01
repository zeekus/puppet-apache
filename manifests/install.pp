# @summary 
   #  Installs the base Apache package.
##class apache::install {
## package { 'httpd':  
##   ensure => 'present',
## }
## }


#params style
#class apache::install (
#  $install_name   = $apache::params::install_name,
# $install_ensure = $apache::params::install_ensure,
#) inherits apache::params {
#  package { "${install_name}":
#    ensure => $install_ensure,
#  }
#}

#hiera style
class apache::install {
  package { "${apache::install_name}":
    ensure => $apache::install_ensure,
  }
}
