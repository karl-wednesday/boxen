class projects::frame-denim {

  boxen::project { 'frame-denim':
    dir           => "${boxen::config::srcdir}/sites/frame-denim.com/deploy",
    mysql         => false,
    nginx         => false,
    source        => 'wednesdaylondon/frame-denim.com'
  }

  host { 'frame-denim.com.host':
    ip => '192.168.56.101',
    host_aliases => 'www.frame-denim.com.host',
  }
}