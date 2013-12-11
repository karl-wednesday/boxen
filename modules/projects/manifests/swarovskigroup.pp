class projects::swarovskigroup {

  boxen::project { 'swarovskigroup':
    dir           => "${boxen::config::srcdir}/sites/swarovskigroup.com/deploy",
    mysql         => true,
    source        => 'wednesdaylondon/swarovskigroup.com'
  }

  host { 'swarovskigroup.com.host':
    ip => '192.168.56.101',
    host_aliases => 'www.swarovskigroup.com.host',
  }
}