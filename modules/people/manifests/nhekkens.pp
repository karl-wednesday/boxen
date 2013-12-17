class people::nhekkens {
  #notify { 'Hello Nicolay': }

  #include osx::dock::autohide

  # requires classes
  include boxen::development

  # requires modules in Puppetfile
  #include bbedit
  include ea_origin
  #include forklift
  include steam
  #include utorrent

  # requires projects
  include projects::wednesday-sample
  include projects::wisp-wednesday-sample
  #include projects::elder-statesman
  include projects::erdem
  #include projects::jbrandjeans
  include projects::lindex
  include projects::swarovskigroup

  # configure Git
  git::config::global {
    'user.name': value => 'Nicolay Hekkens';
    'user.email': value => 'nicolay@wednesdayagency.com';
  }
}