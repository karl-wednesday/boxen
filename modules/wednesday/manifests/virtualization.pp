class wednesday::virtualization::mac {
  include vagrant

  $home = "/Users/${::boxen_user}"
  $vagrant_dir = "${boxen::config::srcdir}/vagrant"

  #vagrant::box { 'precise64/virtualbox':
  #  source => 'http://files.vagrantup.com/precise64.box'
  #}

  repository { $vagrant_dir:
    source => 'wednesdaylondon/vagrant'
  }

	#exec { "VirtualBox_reset":
	#	command => "VirtualBox restart",
	#	path    => "/Library/StartupItems/VirtualBox/",
	#	user    => root
	#}

  host { 'vagrant':
    ip => '192.168.56.101'
  }
}