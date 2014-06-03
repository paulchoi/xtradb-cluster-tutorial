class haproxy::config {
  file {
    "/etc/haproxy/haproxy.cfg":
      ensure => present,
      require => Package['haproxy'],
      source => "/vagrant/modules/haproxy/files/xtradb_cluster.cfg";
  }
}