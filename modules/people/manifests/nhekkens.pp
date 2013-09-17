class people::nhekkens {
  # notify { 'Hello Karl': }

  # requires classes
  include boxen::development

  # requires modules in Puppetfile
  #include bbedit
  #include forklift
  include ea_origin
  include steam
  #include utorrent

  # requires projects
  include projects::swarovskigroup
  include projects::jbrandjeans
  include projects::lindex

  # configure dotfiles
  $home     = "/Users/${::boxen_user}"
  $my       = "${home}/my"
  $dotfiles = "${my}/dotfiles"

  file { $my:
    ensure  => directory
  }

  repository { $dotfiles:
    source  => '{my}/dotfiles',
    require => File[$my]
  }

  # configure Git
  git::config::global {
    'user.name': value => 'Nicolay Hekkens';
    'user.email': value => 'nicolay@wednesdayagency.com';
  }

#  osx_defaults { "require pass at screensaver":
#    ensure => present,
#    domain => 'com.apple.Finder',
#    key    => 'AppleShowAllFiles',
#    value  => 1
#  }
}