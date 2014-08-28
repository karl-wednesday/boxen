class projects::mulberry-cara {

  boxen::project { 'mulberry-cara':
    dir           => "${boxen::config::srcdir}/sites/mulberry-cara/deploy",
    mysql         => false,
    nginx         => false,
    source        => 'wednesdaylondon/mulberry-cara'
  }

  host { 'mulberry-cara.host':
    ip => '192.168.56.101',
    host_aliases => 'www.mulberry-cara.host',
  }
}
