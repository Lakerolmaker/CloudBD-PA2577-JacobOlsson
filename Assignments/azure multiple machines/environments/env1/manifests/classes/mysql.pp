class mysql {

  exec { 'install msql':
      require => Exec['apt_get_update'],
      command => '/usr/bin/apt-get install -y mysql-server mysql-client'
  }

  exec { 'setup msql':
    command => 'mysqladmin -uroot password root',
    path    => ['/bin', '/usr/bin'],
    require => Exec['install msql'];
  }

}
