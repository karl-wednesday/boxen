class wednesday::dotfiles::mac {

  # configure dotfiles
  $home     = "/Users/${::boxen_user}"
  $dotfiles_dir = "${boxen::config::srcdir}/dotfiles"
  
  repository { $dotfiles_dir:
    source => "${::github_login}/dotfiles"
  }

  file { "${home}/.profile":
    ensure  => link,
    target  => "${dotfiles_dir}/.profile",
    require => Repository[$dotfiles_dir]
  }

  file { "${home}/.bashrc":
    ensure  => link,
    target  => "${dotfiles_dir}/.bashrc",
    require => Repository[$dotfiles_dir]
  }

  file { "${home}/.ssh/id_rsa":
    ensure  => link,
    target  => "${dotfiles_dir}/.ssh/id_rsa",
    require => Repository[$dotfiles_dir]
  }

  file { "${home}/.ssh/id_rsa.pub":
    ensure  => link,
    target  => "${dotfiles_dir}/.ssh/id_rsa.pub",
    require => Repository[$dotfiles_dir]
  }

  file { "${home}/.ssh/config":
    ensure  => link,
    target  => "${dotfiles_dir}/.ssh/config",
    require => Repository[$dotfiles_dir]
  }

  file { "${home}/.vimrc":
    ensure  => link,
    target  => "${dotfiles_dir}/.vimrc",
    require => Repository[$dotfiles_dir]
  }

  file { "${home}/.s3cfg":
    ensure  => link,
    target  => "${dotfiles_dir}/.s3cfg",
    require => Repository[$dotfiles_dir]
  }

  file { "${home}/Library/Application Support/Sublime Text 2/Packages/SublimeGrunt.sublime-settings":
    ensure  => link,
    target  => "${dotfiles_dir}/applications/Sublime Text 2/Packages/SublimeGrunt.sublime-settings",
    require => Repository[$dotfiles_dir],
    # source  => "${home}/Library/Application Support/Sublime Text 2/Packages/SublimeGrunt.sublime-settings"
  }  
}