class projects::jbrandjeans {

  boxen::project { 'jbrandjeans':
    dir           => "${boxen::config::srcdir}/sites/jbrandjeans.com/deploy",
    mysql         => true,
    source        => 'wednesdaylondon/jbrandjeans.com'
  }
}