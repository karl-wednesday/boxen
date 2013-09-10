class projects::swarovskigroup {

  boxen::project { 'swarovskigroup':
    dir           => "${boxen::config::srcdir}/sites/swarovskigroup.com/deploy",
    mysql         => true,
    source        => 'wednesdaylondon/swarovskigroup.com'
  }
}