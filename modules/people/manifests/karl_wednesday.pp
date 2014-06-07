class people::karl_wednesday {
  #notify { 'Hello Karl': }

  # configure Git
  git::config::global {
    'user.name': value => 'Karl Podger';
    'user.email': value => 'karl@wednesdayagency.com';
  }

  service {"dev.nginx":
    ensure => "stopped",
  }

  service {"dev.dnsmasq":
    ensure => "stopped",
  }

  include osx::dock::autohide

  # requires classes
  include boxen::development

  # requires modules in Puppetfile
  include bbedit
  include forklift
  include wednesday::games::mac
  # include utorrent

  # requires projects
  include projects::cookadlib 
  # include projects::elder-statesman
  include projects::erdem
  # include projects::jbrandjeans
  include projects::kentandcurwen
  # include projects::lindex
  # include projects::old-erdem
  include projects::swarovskigroup
  include projects::wednesday-sample
  include projects::wisp-wednesday-sample
}