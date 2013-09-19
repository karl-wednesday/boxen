class projects::elder-statesman {

  boxen::project { 'elder-statesman':
    dir           => "${boxen::config::srcdir}/sites/elder-statesman.com/deploy",
    mysql         => true,
    source        => 'wednesdaylondon/elder-statesman.com'
  }
}