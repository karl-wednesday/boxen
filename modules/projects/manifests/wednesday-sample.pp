class projects::wednesday-sample {

  $project_dir = "${boxen::config::srcdir}/sites/wednesday-sample/build"

  boxen::project { 'wednesday-sample':
    dir           => "${project_dir}",
    mysql         => true,
    source        => 'karl-wednesday/wednesday-sample'
  }

  host { 'wednesday-sample.host':
    ip => '192.168.56.101',
    host_aliases => 'wednesday-sample.host',
  }

  file { "${project_dir}/dbv/config.php":
    ensure  => link,
    target  => "${project_dir}/config/dbv/config.php",
    require => Repository[$project_dir]
  }
}