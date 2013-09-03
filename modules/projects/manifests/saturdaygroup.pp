class projects::saturdaygroup {

  boxen::project { 'saturdaygroup':
    dir           => "${boxen::config::srcdir}/saturday-group.com/deploy",
    mysql         => true,
    source        => 'wednesdaylondon/saturday-group.com'
  }
}