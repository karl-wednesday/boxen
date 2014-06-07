class projects::cookadlib {

	include git
  # include mongodb

	$project_dir = "${boxen::config::srcdir}/sites/cookadlib.com/deploy"

  boxen::project { "cookadlib":
    dir           => "${project_dir}",
    mongodb       => false,
    mysql         => false,
    phantomjs     => false,
    redis         => false,
    source        => "cookadlib/cookadlib.com"
  }

  git::config::local { $project_dir:
    ensure => present,
    repo   => $project_dir,
    require => Repository[$project_dir],
    key    => "user.email",
    value  => "karl.podger@primeordinal.com"
  }

  host { "cookadlib.com.host":
    ip => "192.168.56.101",
    host_aliases => "www.cookadlib.com.host",
  }
}