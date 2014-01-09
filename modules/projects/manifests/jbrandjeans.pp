class projects::jbrandjeans {

  boxen::project { 'jbrandjeans':
    dir           => "${boxen::config::srcdir}/sites/jbrandjeans.com/build",
    mysql         => true,
    redis         => true,
    nginx         => true,
    source        => 'wednesdaylondon/jbrandjeans.com'
  }

  host { 'jbrandjeans.com.host':
    ip => '192.168.56.101',
    host_aliases => 'www.jbrandjeans.com.host',
  }
}