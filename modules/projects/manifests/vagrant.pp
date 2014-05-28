class projects::vagrant {

  $sites_dir = "${boxen::config::srcdir}/sites"

  boxen::project { "vagrant":
    dir           => "${sites_dir}",
    mysql         => false,
    nginx         => false
  }

  file { "${sites_dir}":
    ensure => directory,
    recurse => true,
    ignore => "{.git,.svn,.DS_Store}",
    owner => "vagrant",
    group => "vagrant"
    # mode => 777
  }

  host { 'vagrant':
    ip => '192.168.56.101'
  }
}