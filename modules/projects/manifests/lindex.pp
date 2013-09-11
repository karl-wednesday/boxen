class projects::lindex {

  boxen::project { 'lindex':
    dir           => "${boxen::config::srcdir}/sites/lindex.com/deploy",
    mysql         => true,
    source        => 'wednesdaylondon/lindex.com'
  }
}