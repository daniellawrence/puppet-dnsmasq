class dnsmasq::install {
  # Install dnsmasq
  package { $dnsmasq::packagename:
    ensure => installed;
  }
}
