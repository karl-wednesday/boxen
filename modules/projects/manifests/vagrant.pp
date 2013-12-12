class projects::vagrant {

  boxen::project { 'vagrant':
    dir             => "${boxen::config::srcdir}/sites",
  }

  host { 'vagrant':
    ip => '192.168.56.101'
  }
}