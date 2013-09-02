class wednesday::environment {
  include wednesday::apps::mac

  include ruby::1-8-7

  include projects::saturday-group.com
  include projects::wednesdayagency.com

  include php::5-5
}
