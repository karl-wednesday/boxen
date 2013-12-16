class people::karl_wednesday {
  #notify { 'Hello Karl': }

  include osx::dock::autohide

  # requires classes
  include boxen::development

  # requires modules in Puppetfile
  include bbedit
  include ea_origin
  include forklift
  include steam
  #include utorrent

  # requires projects
  include projects::wednesday-sample
  include projects::wisp-wednesday-sample
  #include projects::elder-statesman
  #include projects::erdem
  include projects::jbrandjeans
  #include projects::lindex
  include projects::swarovskigroup

  # configure Git
  git::config::global {
    'user.name': value => 'Karl Podger';
    'user.email': value => 'karl@wednesdayagency.com';
  }
}