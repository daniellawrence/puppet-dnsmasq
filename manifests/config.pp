class dnsmasq::config {

   file { "${dnsmasq::configdir}/${dnsmasq::tld}.conf":
     content => template($dnsmasq::template),
     owner   => 'root',
     group   => 'root',
     mode    => '0644',
     notify  => Service[$dnsmasq::servicename],
   }
}
