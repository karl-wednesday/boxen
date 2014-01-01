class wednesday::packages::mac {
	include pkgconfig
	include autoconf
	include automake
	include foreman
	#include gource
	include heroku
	include imagemagick
	include imageoptim
	include libpng
	include memcached
	#include memcached::lib
	#include mongodb
	#include mysql
	# include nginx
	# include nvm
	include pcre
	include phantomjs
	#include php
	#include php::5_4
	#include php::5_4_11
	#include php::composer
	include pkgconfig
	include python
	include redis
	include ruby
	include statsd
	include wget
	#include wkhtmltopdf
	include zeromq

	class { 'ruby::global':
		version => '1.9.3'
	}

	class { 'nodejs::global':
		version => 'v0.10.3'
	}

	package { 'casperjs':
		install_options => ['--devel']
	}

	nodejs::module { 'bower':
		module  => 'bower',
		node_version => 'v0.10.3'
	}

	nodejs::module { 'grunt-cli':
		module  => 'grunt-cli',
		node_version => 'v0.10.3'
	}

	nodejs::module { 'less':
		module  => 'less',
		node_version => 'v0.10.3'
	}

	nodejs::module { 'jshint':
		module  => 'jshint',
		node_version => 'v0.10.3'
	}

	nodejs::module { 'recess':
		module  => 'recess',
		node_version => 'v0.10.3'
	}

	nodejs::module { 'yo':
		module  => 'yo',
		node_version => 'v0.10.3'
	}

	ruby::gem { 'sass for 1.9.3-p448':
		gem     => 'sass',
		ruby    => '1.9.3-p448',
		version => '~> 3.2.10'
	}

	ruby::gem { 'compass for 1.9.3-p448':
		gem     => 'compass',
		ruby    => '1.9.3-p448',
		version => '~> 0.12.2'
	}

}