class projects::saturdaygroup {

  boxen::project { 'saturdaygroup':
    dir           => "${boxen::config::srcdir}/sites/saturday-group.com/deploy",
    mysql         => true,
    nginx         => false,
    source        => 'wednesdaylondon/saturday-group.com'
  }

  host { 'saturday-group.com.host':
    ip => '192.168.56.101',
    host_aliases => 'www.saturday-group.com.host',
  }
}