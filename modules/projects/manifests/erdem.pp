class projects::erdem {

  boxen::project { 'erdem':
    dir           => "${boxen::config::srcdir}/sites/erdem.com/deploy",
    mysql         => true,
    source        => 'wednesdaylondon/erdem.com'
  }
}