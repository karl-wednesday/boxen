class wednesday::packages::mac {
	include pkgconfig
	include autoconf
	include automake
	include csshx
	#include foreman
	include gh
	# include gource
	#include heroku
	include homebrew
	include imagemagick
	include imageoptim
	include java
	include libpng
	include memcached
	# include memcached::lib
	include mongodb
	include mysql
	# include nodejs::v0_10_1
	#include nginx
	# include ntfs_3g
	# include nvm
	# include osxfuse
	include pcre
	include phantomjs
	include php
	# include php::5_4
	# include php::5_4_11
	include php::composer
	include pkgconfig
	include python
	include redis
	include ruby
	#include statsd
	# include vim
	include wget
	# include wkhtmltopdf
	#include zeromq

	vim::bundle { [
	  'scrooloose/syntastic',
	  'sjl/gundo.vim'
	]: }

	class { 'nodejs::global':
		version => 'v0.10.21'
	}

	# class { 'ruby::global':
	# 	version => '2.0.0'
	# }

	package { 'casperjs':
		install_options => ['--devel']
	}

	package { 'gpg':
	}

	# package { 'phantomjs':
	# }

	package { 's3cmd':
	}

	package { 'slimerjs':
	}

	nodejs::module { 'bower':
		module  => 'bower',
		node_version => 'v0.10.21'
	}

	nodejs::module { 'grunt-cli':
		module  => 'grunt-cli',
		node_version => 'v0.10.21'
	}

	# nodejs::module { 'less':
	# 	module  => 'less',
	# 	node_version => 'v0.10.21'
	# }

	nodejs::module { 'jshint':
		module  => 'jshint',
		node_version => 'v0.10.21'
	}

	# nodejs::module { 'recess':
	# 	module  => 'recess',
	# 	node_version => 'v0.10.21'
	# }

	# nodejs::module { 'sails':
	# 	module  => 'sails',
	# 	node_version => 'v0.10.21'
	# }

	nodejs::module { 'yo':
		module  => 'yo',
		node_version => 'v0.10.21'
	}

	# ensure a gem is installed for a certain ruby version
	# note, you can't have duplicate resource names so you have to name like so
	$version = '2.0.0'
	ruby_gem { "bundler for ${version}":
		gem          => 'bundler',
		version      => '~> 1.2.0',
		ruby_version => $version
	}

	# ensure a gem is installed for all ruby versions
	ruby_gem { 'bundler for all rubies':
		gem          => 'bundler',
		version      => '~> 1.0',
		ruby_version => '*'
	}

	ruby_gem { 'compass for 2.0.0':
		gem          => 'compass',
		ruby_version => $version,
		#version => '~> 0.12.3'
		version      => '~> 1.0.0.alpha.19'
	}

	ruby_gem { 'sass for 2.0.0':
		gem          => 'sass',
		ruby_version => $version,
		version      => '~> 3.3'
	}

	# class gource {
	# 	# homebrew::tap { 'homebrew/versions': }

	# 	package {
	# 		'gource':
	# 	}
	# }

	# class ext4fuse {
	# 	#homebrew::tap { 'homebrew/versions': }

	# 	package {
	# 		'ext4fuse':
	# 	}
	# }
}