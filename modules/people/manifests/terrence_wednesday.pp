class people::terrence_wednesday {
  # requires classes
  include boxen::development

  # requires modules in Puppetfile
  include ea_origin
  include steam

  # requires projects
  include projects::swarovskigroup
  include projects::jbrandjeans

  $home     = "/Users/${::boxen_user}"
  $my       = "${home}/my"
  $dotfiles_dir = "${boxen::config::srcdir}/dotfiles"
  
  file { $my:
    ensure  => directory
  }

  repository { $dotfiles_dir:
    source => "${::github_user}/dotfiles"
  }

  file { "${home}/.profile":
    ensure  => link,
    target  => "${dotfiles_dir}/.profile",
    require => Repository[$dotfiles_dir]
  }

  file { "${home}/.ssh/config":
    ensure  => link,
    target  => "${dotfiles_dir}/.ssh/config",
    require => Repository[$dotfiles_dir]
  }

  git::config::global {
    'user.name': value => 'Karl Podger';
    'user.email': value => 'terrence@wednesdayagency.com';
  }

#  osx_defaults { "require pass at screensaver":
#    ensure => present,
#    domain => 'com.apple.Finder',
#    key    => 'AppleShowAllFiles',
#    value  => 1
#  }
}