class people::karl_wednesday {
  #notify { 'Hello Karl': }

  # configure Git
  git::config::global {
    'user.name': value => 'Karl Podger';
    'user.email': value => 'karl@wednesdayagency.com';
  }

  # service {"dev.nginx":
  #   ensure => "stopped",
  # }

  # service {"dev.dnsmasq":
  #   ensure => "stopped",
  # }

  include osx::dock::autohide

  # requires classes
  include boxen::development

  # requires modules in Puppetfile
  include arq
  include bbedit
  include brow
  include btsync
  include caffeine
  include ccleaner
  include clipmenu
  include colloquy
  include cyberduck
  #include docker
  include evernote
  include flux
  include forklift
  include googleearth
  include handbrake
  include iterm2::stable
  include induction
  include macvim
  include opera
  include transmission
  include screenhero
  include spectacle
  include skitch
  include skype
  include spotify
  #include teamviewer
  include upshot
  #include utorrent
  include vagrant
  include virtualbox
  include vlc
  include wedge
  include vmware_fusion

  #include wednesday::games::mac

  # requires projects
  include projects::cookadlib
  # include projects::elder-statesman
  include projects::erdem
  include projects::frame-denim
  # include projects::jbrandjeans
  # include projects::kentandcurwen
  # include projects::lindex
  include projects::mulberry-cara
  # include projects::swarovskigroup
  include projects::wednesdayagency
  include projects::wednesday-sample
  include projects::wisp-wednesday-sample
}
