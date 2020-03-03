# @summary
#   Allows for the Apache service to restart when triggered
class apache::service {
  service { "${apache::service_name}":
    alias      => apaceh_service,
    ensure     => $apache::service_ensure,
    enable     => $apache::service_enable,
    hasrestart => true,
    audit     => 'hasrestart',
    before    => File["apache_config"],
  }
}
