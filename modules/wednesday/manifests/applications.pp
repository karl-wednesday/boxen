class wednesday::applications::mac {
	include alfred
	include arq
	include brow
	include btsync
	include caffeine
	include ccleaner
	include charles
	include chrome
	include chrome::canary
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

	sublime_text_2::package { 'Package Control':
		source => 'wbond/sublime_package_control'
	}

	sublime_text_2::package { 'EditorConfig':
		source => 'sindresorhus/editorconfig-sublime'
	}

	sublime_text_2::package { 'Git':
		source => 'kemayo/sublime-text-2-git'
	}

	sublime_text_2::package { 'GitGutter':
		source => 'jisaacks/GitGutter'
	}

	sublime_text_2::package { 'HTMLBeautify':
		source => 'rareyman/HTMLBeautify'
	}

	sublime_text_2::package { 'JSLint':
		source => 'darrenderidder/Sublime-JSLint'
	}

	sublime_text_2::package { 'LESS':
		source => 'danro/LESS-sublime'
	}

	sublime_text_2::package { 'Puppet':
		source => 'russCloak/SublimePuppet'
	}

	sublime_text_2::package { 'Ruby Tests':
		source => 'maltize/sublime-text-2-ruby-tests'
	}

	sublime_text_2::package { 'SublimeCodeIntel':
		source => 'SublimeCodeIntel/SublimeCodeIntel'
	}

	sublime_text_2::package { 'DocBlockr':
		source => 'spadgos/sublime-jsdocs'
	}

	sublime_text_2::package { 'Color Highlighter':
		source => 'Monnoroch/ColorHighlighter'
	}

	sublime_text_2::package { 'Emmet':
		source => 'sergeche/emmet-sublime'
	}

	sublime_text_2::package { 'Sublime​Linter':
		source => 'SublimeLinter/SublimeLinter'
	}

	sublime_text_2::package { 'HTML5':
		source => 'mrmartineau/HTML5'
	}

	sublime_text_2::package { 'Bracket​Highlighter':
		source => 'facelessuser/BracketHighlighter'
	}

	sublime_text_2::package { 'Sublime Alignment':
		source => 'wbond/sublime_alignment'
	}

	sublime_text_2::package { 'j​Query':
		source => 'SublimeText/jQuery'
	}

	sublime_text_2::package { 'Prefixr':
		source => 'wbond/sublime_prefixr'
	}
	
	sublime_text_2::package { 'JsFormat':
		source => 'jdc0589/JsFormat'
	}

	sublime_text_2::package { 'Sass':
		source => 'nathos/sass-textmate-bundle'
	}

	sublime_text_2::package { 'ColorPicker':
		source => 'weslly/ColorPicker'
	}

	sublime_text_2::package { 'j​Query Snippets pack':
		source => 'aaronpowell/sublime-jquery-snippets'
	}

	sublime_text_2::package { 'Sublime Text 2 Ruby Tests':
		source => 'maltize/sublime-text-2-ruby-tests'
	}

	# file { "/Users/$luser/Library/Application Support/Sublime Text 2/Packages/User/JSLint.sublime-build":
	#   source => "$boxen::config::repodir/modules/projects/files/JSLint.sublime-build"
	# }
}