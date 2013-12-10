class people::terrence_wednesday {
  # notify { 'Hello Terrence': }

  # requires classes
  include boxen::development

  # requires modules in Puppetfile
  #include bbedit
  include ea_origin
  #include forklift
  include steam
  #include utorrent

  # requires projects
  #include projects::elder-statesman
  include projects::swarovskigroup
  include projects::jbrandjeans
  #include projects::lindex

  # configure dotfiles
  $home     = "/Users/${::boxen_user}"
  $dotfiles_dir = "${boxen::config::srcdir}/dotfiles"
  
  repository { $dotfiles_dir:
    source => "${::github_login}/dotfiles"
  }

  file { "${home}/.profile":
    ensure  => link,
    target  => "${dotfiles_dir}/.profile",
    require => Repository[$dotfiles_dir]
  }

  # configure Git
  git::config::global {
    'user.name': value => 'Terrence Cua';
    'user.email': value => 'terrence@wednesdayagency.com';
  }

#  osx_defaults { "require pass at screensaver":
#    ensure => present,
#    domain => 'com.apple.Finder',
#    key    => 'AppleShowAllFiles',
#    value  => 1
#  }
}