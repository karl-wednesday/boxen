class people::terrence_wednesday {
  #notify { 'Hello Terrence': }

  #include osx::dock::autohide

  # requires classes
  include boxen::development

  # requires modules in Puppetfile
  #include bbedit
  #include forklift
  include wednesday::games::mac
  #include utorrent

  # requires projects
  #include projects::redacted
  #include projects::elder-statesman
  include projects::erdem
  #include projects::jbrandjeans
  #include projects::lindex
  include projects::old-erdem
  include projects::swarovskigroup
  #include projects::wednesday-sample
  #include projects::wisp-wednesday-sample

  # configure Git
  git::config::global {
    'user.name': value => 'Terrence Cua';
    'user.email': value => 'terrence@wednesdayagency.com';
  }
}