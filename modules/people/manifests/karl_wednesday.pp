class people::karl_wednesday {
  #notify { 'Hello Karl': }

  # requires classes
  include boxen::development

  # requires modules in Puppetfile
  include bbedit
  include ea_origin
  include forklift
  include steam
  #include utorrent

  # requires projects
  include projects::wednesday-sample
  #include projects::elder-statesman
  include projects::jbrandjeans
  #include projects::lindex
  include projects::swarovskigroup

  # configure Git
  git::config::global {
    'user.name': value => 'Karl Podger';
    'user.email': value => 'karl@wednesdayagency.com';
  }

  include osx::dock::autohide

#  osx_defaults { "require pass at screensaver":
#    ensure => present,
#    domain => 'com.apple.Finder',
#    key    => 'AppleShowAllFiles',
#    value  => 1
#  }
}