class wednesday::dotfiles::mac {
  $home = "/Users/${::boxen_user}"
  $dotfiles_dir = "${boxen::config::srcdir}/dotfiles"

  repository { $dotfiles_dir:
    source => "${::github_user}/dotfiles"
  }

  file { "${home}/.profile":
    ensure  => link,
    target  => "${dotfiles_dir}/.profile",
    require => Repository[$dotfiles_dir]
  }

  file { "${home}/.ssh/config":
    ensure  => link,
    target  => "${dotfiles_dir}/.ssh/config",
    require => Repository[$dotfiles_dir]
  }
}