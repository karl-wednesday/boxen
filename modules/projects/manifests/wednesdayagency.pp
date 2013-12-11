class projects::wednesdayagency {
  # include icu4c
  # include phantomjs
  # include apache
  # include php
  # include mysql

  boxen::project { 'wednesdayagency':
    dir             => "${boxen::config::srcdir}/sites/wednesdayagency.com/deploy",
    # dotenv        => true,
    # elasticsearch => true,
    mysql           => true,
    # nginx         => true,
    # redis         => true,
    # ruby          => '1.9.3',
    source          => 'wednesdaylondon/wednesdayagency.com'
  }

  host { 'wednesdayagency.com.host':
    ip => '192.168.56.101',
    host_aliases => 'www.wednesdayagency.com.host',
  }
}