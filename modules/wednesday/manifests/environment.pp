class wednesday::environment {
  include wednesday::users
  include wednesday::os::mac
  include wednesday::dotfiles::mac
  include wednesday::packages::mac
  include wednesday::applications::mac
  include wednesday::virtualization::mac
  include wednesday::projects
}
