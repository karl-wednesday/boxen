class projects::erdem {

  boxen::project { 'erdem':
    dir           => "${boxen::config::srcdir}/sites/erdem.com/build",
    mysql         => true,
    source        => 'wednesdaylondon/erdem.com'
  }

  host { 'erdem.com.host':
    ip => '192.168.56.101',
    host_aliases => 'www.erdem.com.host',
  }
}