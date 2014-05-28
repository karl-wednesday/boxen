class projects::wisp-wednesday-sample {

  $project_dir = "${boxen::config::srcdir}/sites/wisp.wednesday-sample"

  boxen::project { 'wisp-wednesday-sample':
    dir           => "${project_dir}",
    mysql         => false,
    nginx         => false,
    source        => 'karl-wednesday/wisp.wednesday-sample'
  }

  host { 'wisp.wednesday-sample.host':
    ip => '192.168.56.101'
  }
}