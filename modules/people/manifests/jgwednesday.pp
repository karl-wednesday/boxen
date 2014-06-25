class people::jgwednesday {
  #notify { 'Hello James': }

  # configure Git
  git::config::global {
    'user.name': value => 'James Gardiner';
    'user.email': value => 'jamesg@wednesdayagency.com';
  }

  service {"dev.nginx":
    ensure => "stopped",
  }

  service {"dev.dnsmasq":
    ensure => "stopped",
  }

  #include osx::dock::autohide

  # requires classes
  include boxen::development

  # requires modules in Puppetfile
  # include bbedit
  # include forklift
  # include wednesday::games::mac
  # include utorrent

  # requires projects
  # include projects::redacted
  # include projects::elder-statesman
  include projects::erdem
  include projects::frame-denim
  # include projects::jbrandjeans
  include projects::kentandcurwen
  # include projects::lindex
  # include projects::old-erdem
  # include projects::swarovskigroup
  # include projects::wednesday-sample
  # include projects::wisp-wednesday-sample
}