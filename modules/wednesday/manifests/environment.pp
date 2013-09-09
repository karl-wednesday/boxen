class wednesday::environment {
  include wednesday::os::mac
  include wednesday::packages::mac
  include wednesday::applications::mac
  include wednesday::dotfiles::mac
  include wednesday::projects
}
