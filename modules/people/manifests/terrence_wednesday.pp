class people::terrence_wednesday {
  # notify { 'Hello Terrence': }

  # requires classes
  include boxen::development

  # requires modules in Puppetfile
  include ea_origin
  include steam

  # requires projects
  include projects::swarovskigroup
  include projects::jbrandjeans

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