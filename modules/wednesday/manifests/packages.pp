class wednesday::packages::mac {
  include autoconf
  include automake
  include foreman
  include heroku
  # include imagemagick
  include imageoptim
  include libpng
  include mongodb
  # include mysql
  # include nginx
  # include nvm
  include phantomjs
  # include php
  # include python
  # include redis
  # include screenhero
  # include statsd
  include wget
  include wkhtmltopdf
  # include zeromq

  # class { 'nodejs::global':
  #   version => 'v0.10.5'
  # }

  class { 'nodejs::global':
    version => 'v0.10'
  }

  nodejs::module { 'less':
    node_version => 'v0.8'
  }

  nodejs::module { 'jshint':
    node_version => 'v0.8'
  }

  nodejs::module { 'bower':
    node_version => 'v0.8'
  }

  nodejs::module { 'grunt-cli':
    node_version => 'v0.8'
  }

  nodejs::module { 'yo':
    node_version => 'v0.8'
  }
  
}