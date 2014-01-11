class wednesday::users {
  group { 'www-data':
    ensure               => 'present'
  }

  user { 'www-data':
    ensure               => 'present',
    gid					 => 'www-data',
    uid					 => '1000' #hide on login screen
  }
}