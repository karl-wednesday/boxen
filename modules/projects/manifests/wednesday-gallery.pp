class projects::wednesday-gallery {

	boxen::project { 'wednesday-gallery':
		dir           => "${boxen::config::srcdir}/sites/wednesday-gallery/deploy",
		mysql         => true,
		nginx         => false,
		source        => 'wednesdaylondon/wednesday-gallery'
	}

	# host { 'wednesday-gallery.com.host':
	# 	ip => '192.168.56.101',
	# 	host_aliases => ['www.wednesday-gallery.com.host', 'kentcurwen.dev']
	# }

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