class projects::swarovskigroup {

	$project_dir = "${boxen::config::srcdir}/sites/swarovskigroup.com/deploy"

	boxen::project { 'swarovskigroup':
		dir           => "${project_dir}",
		mysql         => false,
		nginx         => false,
		source        => 'wednesdaylondon/swarovskigroup.com'
	}

	host { 'swarovskigroup.com.host':
		ip => '192.168.56.101',
		host_aliases => 'www.swarovskigroup.com.host',
	}

	# exec { "/opt/boxen/nodenv/shims/npm install":
	# 	cwd     => "${project_dir}",
	# 	creates => "${project_dir}/node_modules",
	# 	onlyif => ["/bin/test -d ${project_dir}"]
	# }

	# exec { "/opt/boxen/nodenv/shims/npm update":
	# 	cwd     => "${project_dir}",
	# 	onlyif => ["/bin/test -d ${project_dir}", "/bin/test -d ${project_dir}/node_modules"]
	# }

	# exec { "/opt/boxen/nodenv/shims/bower install":
	# 	cwd     => "${project_dir}",
	# 	creates => "${project_dir}/node_modules",
	# 	onlyif => ["/bin/test -d ${project_dir}"]
	# }

	# exec { "/opt/boxen/nodenv/shims/bower update":
	# 	cwd     => "${project_dir}",
	# 	onlyif => ["/bin/test -d ${project_dir}", "/bin/test -d ${project_dir}/bower_components"]
	# }
}