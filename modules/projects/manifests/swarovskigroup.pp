class projects::swarovskigroup {

  boxen::project { 'swarovskigroup':
    dir           => "${boxen::config::srcdir}/swarovskigroup.com/deploy",
    mysql         => true,
    source        => 'wednesdaylondon/swarovskigroup.com'
  }
}