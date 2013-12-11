class projects::elder-statesman {

  boxen::project { 'elder-statesman':
    dir           => "${boxen::config::srcdir}/sites/elder-statesman.com/deploy",
    mysql         => true,
    source        => 'wednesdaylondon/elder-statesman.com'
  }

  host { 'elder-statesman.com.host':
    ip => '192.168.56.101',
    host_aliases => 'www.elder-statesman.com.host',
  }
}