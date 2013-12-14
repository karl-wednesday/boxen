class projects::wednesday-sample {

  include mysql
  include php
  #include php::5_4
  #include php::5_4_11
  include php::composer

  $project_dir = "${boxen::config::srcdir}/sites/wednesday-sample"

  boxen::project { 'wednesday-sample':
    dir           => "${project_dir}",
    mysql         => true,
    source        => 'karl-wednesday/wednesday-sample'
  }

  host { 'wednesday-sample.host':
    ip => '192.168.56.101',
    host_aliases => 'www.wednesday-sample.host',
  }

  file { "${project_dir}/dbv/config.php":
    ensure  => link,
    target  => "${project_dir}/config/dbv/config.php",
    require => Repository[$project_dir]
  }

  file { "${project_dir}/build/public/wp-config.php":
    ensure  => link,
    target  => "${project_dir}/config/wordpress/wp-config.php",
    require => Repository[$project_dir]
  }
}