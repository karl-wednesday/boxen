class projects::kentandcurwen {

  boxen::project { 'kentandcurwen':
    dir           => "${boxen::config::srcdir}/sites/kentandcurwen.com/deploy",
    mysql         => true,
    source        => 'wednesdaylondon/kentcurwen'
  }

  host { 'kentandcurwen.com.host':
    ip => '192.168.56.101',
    host_aliases => 'www.kentandcurwen.com.host',
  }
}