node /appserver.*/ {
  include apt_get_update
  include nodejs
}

node /dbserver1.*/ {
  include apt_get_update
  include mysql
}

node /web1.*/ {
  include apt_get_update

  package { 'nginx':
    ensure => installed,
    require => Exec['apt_get_update']
  }

  service { 'nginx':
    ensure => 'running',
    enable => true,
  }
}

node default {
  include apt_get_update
}
