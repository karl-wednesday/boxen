class people::terrence_wednesday {
  #notify { 'Hello Terrence': }

  #include osx::dock::autohide

  # requires classes
  include boxen::development

  # requires modules in Puppetfile
  include wednesday::games::mac

  # requires projects
  #include projects::wednesday-sample
  #include projects::wisp-wednesday-sample
  #include projects::elder-statesman
  #include projects::erdem
  #include projects::jbrandjeans
  #include projects::lindex
  include projects::swarovskigroup

  # configure Git
  git::config::global {
    'user.name': value => 'Terrence Cua';
    'user.email': value => 'terrence@wednesdayagency.com';
  }
}