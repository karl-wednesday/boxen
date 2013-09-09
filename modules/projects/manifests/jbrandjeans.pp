class projects::jbrandjeans {

  boxen::project { 'jbrandjeans':
    dir           => "${boxen::config::srcdir}/jbrandjeans.com/deploy",
    mysql         => true,
    source        => 'wednesdaylondon/jbrandjeans.com'
  }
}