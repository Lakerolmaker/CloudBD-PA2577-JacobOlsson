class nodejs {

  package { 'curl':
      ensure => 'installed',
      require => Exec['apt_get_update']
  }

  exec { 'download node':
      command => '/usr/bin/curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -'
  }

  exec { 'install node':
      require => Exec['download node', 'apt_get_update' ],
      command => '/usr/bin/sudo apt-get install -y nodejs'
  }

  exec { 'build essential':
      require => Exec['download node', 'apt_get_update' , 'install node'],
      command => '/usr/bin/sudo apt-get install -y build-essential'
  }

  exec { "checkversion" :
      require => Exec['download node', 'apt_get_update' , 'install node' , 'build essential'],
      command => "/usr/bin/node --version && /usr/bin/npm --version",
      logoutput => true,
  }

}
