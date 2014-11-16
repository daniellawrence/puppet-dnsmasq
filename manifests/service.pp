class dnsmasq::service {

  service{$dnsmasq::servicename:
    ensure => $dnsmasq::enable,
  }
}
