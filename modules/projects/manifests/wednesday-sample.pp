class projects::wednesday-sample {

  host { "wednesday-sample.host":
    ip => "192.168.56.101",
    host_aliases => "www.wednesday-sample.host",
  }

  host { "dbv.wednesday-sample.host":
    ip => "192.168.56.101",
    host_aliases => "dbv.wednesday-sample.host",
  }

  $project_dir = "${boxen::config::srcdir}/sites/wednesday-sample"
  $wordpress_dir = "${project_dir}/build/public"
  $dbv_dir = "${project_dir}/dbv"

  boxen::project { "wednesday-sample":
    dir           => "${project_dir}",
    nginx         => true,
    mysql         => true,
    source        => "karl-wednesday/wednesday-sample"
  }

  # repository {
  # "${wordpress_dir}":
  #   source   => "WordPress/WordPress", #short hand for github repos
  #   provider => "git",
  #   require => Repository[$project_dir];
  #}

  file { "${wordpress_dir}/wp-content":
    ensure => directory,
    recurse => true,
    ignore => ".git",
    owner => "www-data",
    group => "www-data",
    mode => 775,
    require => [
      Repository[$project_dir],
      User["www-data"]
      # Repository[$wordpress_dir]
    ]
  }

  file { "${wordpress_dir}/wp-config.php":
    ensure => file,
    source  => "${project_dir}/config/wordpress/wp-config.php",
    require => [
      Repository[$project_dir],
      # Repository[$wordpress_dir]
    ]
  }

  # repository {
  # "${dbv_dir}":
  #   source   => "victorstanciu/dbv", #short hand for github repos
  #   provider => "git",
  #   require => Repository[$project_dir];
  # }
  #->
  file { "${dbv_dir}/config.php":
    ensure => file,
    source  => "${project_dir}/config/dbv/config.php",
    require => [
      Repository[$project_dir],
      # Repository[$dbv_dir]
    ]
  }
  
  file { "${project_dir}/sql/data":
    ensure => directory,
    recurse => true,
    ignore => ".git",
    owner => "www-data",
    group => "www-data",
    mode => 777,
    require => [
      Repository[$project_dir],
      User["www-data"]
    ]
  }

}