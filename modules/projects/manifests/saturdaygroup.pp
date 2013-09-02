class projects::saturdaygroup {
  include icu4c
  include phantomjs

  boxen::project { 'saturdaygroup':
    dotenv        => true,
    elasticsearch => true,
    mysql         => true,
    nginx         => true,
    redis         => true,
    ruby          => '1.9.3',
    source        => 'boxen/saturdaygroup'
  }
}