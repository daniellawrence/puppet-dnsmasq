class dnsmasq(
  $tld = 'dev',
  $bind = '127.0.0.1',
  $enable = true,
  $configdir = "/etc/dnsmasq.d",
  $servicename = "dnsmasq",
  $template = "dnsmasq/dnsmasq.conf.erb",
  $packagename = "dnsmasq"
){
  class{'dnsmasq::install': } ->
  class{'dnsmasq::config': } ->
  class{'dnsmasq::service': } ->
  Class["dnsmasq"]
}
