class projects::kentandcurwen {

	boxen::project { 'kentandcurwen':
		dir           => "${boxen::config::srcdir}/sites/kentandcurwen.com/deploy",
		mysql         => true,
		source        => 'wednesdaylondon/kentcurwen'
	}

	host { 'kentandcurwen.com.host':
		ip => '192.168.56.101',
		host_aliases => 'www.kentandcurwen.com.host'
	}

	exec { "/opt/boxen/nodenv/shims/npm install":
		cwd     => "${project_dir}",
		creates => "${project_dir}/node_modules",
		onlyif => ["/bin/test -d ${project_dir}"]
	}

	exec { "/opt/boxen/nodenv/shims/npm update":
		cwd     => "${project_dir}",
		onlyif => ["/bin/test -d ${project_dir}", "/bin/test -d ${project_dir}/node_modules"]
	}

	exec { "/opt/boxen/nodenv/shims/bower install":
		cwd     => "${project_dir}",
		creates => "${project_dir}/node_modules",
		onlyif => ["/bin/test -d ${project_dir}"]
	}

	exec { "/opt/boxen/nodenv/shims/bower update":
		cwd     => "${project_dir}",
		onlyif => ["/bin/test -d ${project_dir}", "/bin/test -d ${project_dir}/bower_components"]
	}
}