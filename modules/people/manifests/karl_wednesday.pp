class people::karl_wednesday {
  # notify { 'Hello Karl': }

  # requires modules in Puppetfile
  #include chrome

  # requires classes
  include boxen::development

  #include emacs   # requires emacs module in Puppetfile
  #include sparrow # requires sparrow module in Puppetfile

  # you should be busy with work dammit
  #include steam
  include ea_origin

  # requires projects
  #include projects::saturdaygroup
  #include projects::wednesdayagency

  $home     = "/Users/${::boxen_user}"
  $my       = "${home}/my"
  $dotfiles = "${my}/dotfiles"
  
#  file { $my:
#    ensure  => directory
#  }

#  repository { $dotfiles:
#    source  => 'karl_wednesday/dotfiles',
#    require => File[$my]
#  }

#  get::config::global {
#    'user.name': value => 'Karl Podger';
#    'user.email': value => 'karl@wednesdayagency.com';
#  }

#  osx_defaults { "require pass at screensaver":
#    ensure => present,
#    domain => 'com.apple.Finder',
#    key    => 'AppleShowAllFiles',
#    value  => 1
#  }
}