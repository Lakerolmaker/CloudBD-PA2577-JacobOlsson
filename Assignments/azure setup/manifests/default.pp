exec { 'apt-get update':
 command => '/usr/bin/apt-get update'
}

package { 'curl':
    ensure => 'installed',
    require => Exec['apt-get update']
}

exec { 'download node':
    command => '/usr/bin/curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -'
}

exec { 'install node':
    require => Exec['download node', 'apt-get update' ],
    command => '/usr/bin/sudo apt-get install -y nodejs'
}

exec { 'build essential':
    require => Exec['download node', 'apt-get update' , 'install node'],
    command => '/usr/bin/sudo apt-get install -y build-essential'
}
