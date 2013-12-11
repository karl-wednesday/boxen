class wednesday::applications::mac {
  include alfred
  include arq
  include brow
  include btsync
  include caffeine
  include ccleaner
  include charles
  include chrome
  include colloquy
  include cyberduck
  include dropbox
  include evernote
  include firefox
  include flux
  include googledrive
  include googleearth
  include handbrake
  include harvest
  include iterm2::stable
  include induction
  include opera
  include tower
  include transmit
  include screenhero
  include sequel_pro
  include spectacle
  include skitch
  include skype
  include spotify
  include sublime_text_2
  include textwrangler
  include upshot
  include vagrant
  #include vim
  include virtualbox
  include vlc

  #class {'charles::license':
  #  license_name => 'Your name',
  #  license_key  => '7ad6c7a6c87...',
  #}

  #vim::bundle { [
  #  'scrooloose/syntastic',
  #  'sjl/gundo.vim'
  #]: }

  # sublime_text_2::package { 'JSLint':
  #   source => 'darrenderidder/Sublime-JSLint'
  # }

  # file { "/Users/$luser/Library/Application Support/Sublime Text 2/Packages/User/JSLint.sublime-build":
  #   source => "$boxen::config::repodir/modules/projects/files/JSLint.sublime-build"
  # }
}