class people::terrence_wednesday {
  notify { 'Hello Terrence': }

  # requires classes
  include boxen::development

  # requires modules in Puppetfile
  #include bbedit
  include ea_origin
  #include forklift
  include steam
  #include utorrent

  # requires projects
  #include projects::wednesday-sample
  #include projects::elder-statesman
  include projects::swarovskigroup
  include projects::jbrandjeans
  #include projects::lindex

  # configure Git
  git::config::global {
    'user.name': value => 'Terrence Cua';
    'user.email': value => 'terrence@wednesdayagency.com';
  }

  #include osx::dock::autohide

#  osx_defaults { "require pass at screensaver":
#    ensure => present,
#    domain => 'com.apple.Finder',
#    key    => 'AppleShowAllFiles',
#    value  => 1
#  }
}