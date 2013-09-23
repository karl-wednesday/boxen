class projects::jbrandjeans {

  boxen::project { 'jbrandjeans':
    dir           => "${boxen::config::srcdir}/sites/jbrandjeans.com/deploy",
    mysql         => true,
    redis         => true,
    nginx         => true,
    source        => 'wednesdaylondon/jbrandjeans.com'
  }
}