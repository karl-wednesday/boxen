class projects::saturdaygroup {

  boxen::project { 'saturdaygroup':
    dir           => "${boxen::config::srcdir}/sites/saturday-group.com/deploy",
    mysql         => true,
    source        => 'wednesdaylondon/saturday-group.com'
  }
}