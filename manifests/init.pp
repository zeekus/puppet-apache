# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include apache

#params.pp style
#class apache {
#  include apache::install
#}

#hiera style init.pp
class apache  (
  String $install_name,
  String $install_ensure,
  String $config_ensure,
  String $config_path,
) {
  contain apache::install
  contain apache::config
  
  Class['::apache::install']
  -> Class['::apache::config']
}
