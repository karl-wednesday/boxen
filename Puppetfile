# This file manages Puppet module dependencies.
#
# It works a lot like Bundler. We provide some core modules by
# default. This ensures at least the ability to construct a basic
# environment.

# Shortcut for a module from GitHub's boxen organization
def github(name, *args)
  options ||= if args.last.is_a? Hash
    args.last
  else
    {}
  end

  if path = options.delete(:path)
    mod name, :path => path
  else
    version = args.first
    options[:repo] ||= "boxen/puppet-#{name}"
    mod name, version, :github_tarball => options[:repo]
  end
end

# Shortcut for a module under development
def dev(name, *args)
  mod name, :path => "#{ENV['HOME']}/src/boxen/puppet-#{name}"
end

# Includes many of our custom types and providers, as well as global
# config. Required.

github "boxen", "3.6.1"

# Support for default hiera data in modules

github "module-data", "0.0.3", :repo => "ripienaar/puppet-module-data"

# Core modules for a basic development environment. You can replace
# some/most of these if you want, but it's not recommended.

github "dnsmasq",     "1.0.1"
github "foreman",     "1.2.0"
github "gcc",         "2.0.101"
github "git",         "2.4.0"
github "go",          "1.1.0"
github "homebrew",    "1.9.3"
github "hub",         "1.3.0"
github "inifile",     "1.0.3", :repo => "puppetlabs/puppetlabs-inifile"
github "nginx",       "1.4.3"
github "nodejs",      "3.7.0"
github "openssl",     "1.0.0"
github "phantomjs",   "2.3.0"
github "pkgconfig",   "1.0.0"
github "repository",  "2.3.0"
github "ruby",        "8.0.4"
github "stdlib",      "4.2.1", :repo => "puppetlabs/puppetlabs-stdlib"
github "sudo",        "1.0.0"
github "xquartz",     "1.1.1"

# Optional/custom modules. There are tons available at
# https://github.com/boxen.

github "alfred", "1.1.2"
github "android", "1.1.0"
github "arq", "1.0.0"
github "autoconf",   "1.0.0"
github "automake", "1.0.0"
github "bbedit", "1.0.2"
github "brow", "1.0.0"
github "btsync", "1.0.0"
github "caffeine", "1.0.0"
github "ccleaner", "1.1.0"
github "charles", "1.0.2"
github "chrome", "1.1.2"
github "clipmenu", "1.0.0"
github "colloquy", "1.0.0"
github "csshx", "1.0.0"
github "cyberduck", "1.0.1"
github "dropbox", "1.2.0"
github "eclipse", "2.2.0"
github "ea_origin", "0.5.0"
github "evernote", "2.0.4"
github "firefox", "1.1.5"
github "flux", "1.0.0"
github "forklift", "1.0.7", :repo => "singuerinc/puppet-forklift"
github "gh", "1.8.0"
github "github_for_mac", "1.0.1"
github "googledrive", "1.0.2"
github "googleearth", "1.0.0"
#github "gource", "0.40", :repo => "wednesdaylondon/Gource"
github "handbrake", "1.0.1"
github "harvest", "1.0.2"
github "heroku", "2.1.1"
github "imagemagick", "1.2.1"
github "imageoptim", "0.0.2"
github "induction", "1.0.0"
github "iterm2", "1.0.4"
github "java", "1.2.0"
github "league_of_legends", "1.1.2"
github "libpng", "1.0.0"
github "libtool", "1.0.0"
github "macvim", "1.0.0"
github "memcached", "1.2.0"
github "mongodb", "1.2.0"
github "mysql", "1.2.0"
github "ntfs_3g", "1.0.0", :repo => "MoOx/puppet-ntfs_3g"
github "nvm", "1.0.0"
github "opera", "0.3.1"
github "osx", "2.2.2"
github "osxfuse", "1.1.0"
github "pcre", "1.0.0"
github "php", "1.1.4"
github "pkgconfig", "1.0.0"
github "postgresql", "2.2.2"
github "python", "1.1.1"
github "redis", "2.1.0"
github "screenhero", "1.0.1"
github "sequel_pro", "1.0.1"
github "skitch", "1.0.2"
github "skype", "1.0.7"
github "spectacle", "1.0.0"
github "spotify", "1.0.1"
github "statsd", "1.0.3"
github "steam", "1.0.1"
github "sublime_text_2", "1.1.2"
github "teamviewer", "1.0.2", :repo => "singuerinc/puppet-teamviewer"
github "textwrangler", "1.0.2"
github "tower", "1.0.0"
github "transmission", "1.1.0"
github "transmit", "1.0.1"
github "upshot", "1.0.0"
github "utorrent", "1.1.1"
github "vagrant", "3.0.9"
github "vim", "1.0.5"
github "virtualbox", "1.0.11"
github "vlc", "1.0.5"
github "vmware_fusion", "1.1.0"
github "wedge", "1.0.1"
github "wget", "1.0.0"
github "wkhtmltopdf", "0.1.1"
github "zeromq", "1.0.0"
