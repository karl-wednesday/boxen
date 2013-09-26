class wednesday::virtualization::mac {
  include vagrant

  vagrant::box { 'precise64/virtualbox':
    source => 'http://files.vagrantup.com/precise64.box'
  }
}