class projects::old-erdem {

  boxen::project { 'old-erdem':
    dir           => "${boxen::config::srcdir}/sites/old.erdem.com",
    mysql         => true,
    source        => 'wednesdaylondon/erdem.com'
  }

  host { 'old.erdem.com.host':
    ip => '192.168.56.101',
  }
}