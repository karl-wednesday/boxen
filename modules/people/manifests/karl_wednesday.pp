class people::karl_wednesday {
  # notify { 'Hello Karl': }

  # requires classes
  include boxen::development

  # requires modules in Puppetfile
  include bbedit
  include ea_origin
  include steam

  # requires projects
  include projects::swarovskigroup
  #include projects::jbrandjeans

  $home     = "/Users/${::boxen_user}"
  $my       = "${home}/my"
  $dotfiles = "${my}/dotfiles"
#  $dotfiles_dir = "${boxen::config::srcdir}/dotfiles"
 
  file { $my:
    ensure  => directory
  }

  repository { $dotfiles:
    source  => 'karl_wednesday/dotfiles',
    require => File[$my]
  }

#  repository { $dotfiles_dir:
#    source => "${::github_user}/dotfiles"
#  }

#  file { "${home}/.temp":
#    ensure  => link,
#    target  => "${dotfiles_dir}/.temp",
#    require => Repository[$dotfiles_dir]
#  }

  git::config::global {
    'user.name': value => 'Karl Podger';
    'user.email': value => 'karl@wednesdayagency.com';
  }

#  osx_defaults { "require pass at screensaver":
#    ensure => present,
#    domain => 'com.apple.Finder',
#    key    => 'AppleShowAllFiles',
#    value  => 1
#  }
}