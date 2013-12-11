class projects::lindex {

  boxen::project { 'lindex':
    dir           => "${boxen::config::srcdir}/sites/lindex.com/deploy",
    mysql         => true,
    source        => 'wednesdaylondon/lindex.com'
  }

  host { 'lindex.com.host':
    ip => '192.168.56.101',
    host_aliases => 'www.lindex.com.host',
  }
}