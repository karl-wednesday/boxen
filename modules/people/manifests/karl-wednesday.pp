class people::karl_wednesday {
  include emacs   # requires emacs module in Puppetfile
  include sparrow # requires sparrow module in Puppetfile

  include projects::saturdaygroup
  include projects::wednesdayagency

  $home     = "/Users/${::boxen_user}"
  $my       = "${home}/my"
  $dotfiles = "${my}/dotfiles"
  
  file { $my:
    ensure  => directory
  }

  repository { $dotfiles:
    source  => 'karl_wednesday/dotfiles',
    require => File[$my]
  }
}