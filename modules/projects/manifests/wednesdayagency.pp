class projects::wednesdayagency {
  include icu4c
  include phantomjs
  include php
  include mysql
  include firefox
  include sublime_text_2

  boxen::project { 'wednesdayagency':
    dotenv        => true,
    elasticsearch => true,
    mysql         => true,
    nginx         => true,
    redis         => true,
    ruby          => '1.9.3',
    source        => 'boxen/wednesdayagency'
  }
}