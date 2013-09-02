# This file manages Puppet module dependencies.
#
# It works a lot like Bundler. We provide some core modules by
# default. This ensures at least the ability to construct a basic
# environment.

def github(name, version, options = nil)
  options ||= {}
  options[:repo] ||= "boxen/puppet-#{name}"
  mod name, version, :github_tarball => options[:repo]
end

# Includes many of our custom types and providers, as well as global
# config. Required.

github "boxen", "3.0.2"

# Core modules for a basic development environment. You can replace
# some/most of these if you want, but it's not recommended.

github "autoconf", "1.0.0"
github "dnsmasq", "1.0.0"
github "gcc", "2.0.1"
github "git", "1.2.5"
github "homebrew", "1.4.1"
github "hub", "1.0.3"
github "inifile", "1.0.0", :repo => "puppetlabs/puppetlabs-inifile"
github "nginx", "1.4.2"
github "nodejs", "3.2.9"
github "openssl", "1.0.0"
github "repository", "2.2.0"
github "ruby", "6.3.4"
github "stdlib", "4.1.0", :repo => "puppetlabs/puppetlabs-stdlib"
github "sudo", "1.0.0"
github "xquartz", "1.1.0"

# Optional/custom modules. There are tons available at
# https://github.com/boxen.

# github "alfred", "1.1.2"
# github "android", "1.0.0"
github "arq", "1.0.0"
# github "augeas", "0.0.4"
github "automake", "1.0.0"
# github "bbedit", "1.0.1"
# github "brow", "1.0.0"
github "btsync", "1.0.0"
github "caffeine", "1.0.0"
## github "ccleaner", "1.0.2"
## github "charles", "1.0.2"
github "chrome", "1.1.0"
# github "cloudapp", "1.0.0"
# github "codekit", "1.0.3"
github "cyberduck", "1.0.1"
# github "dockutil", "1.0.0"
github "dropbox", "1.1.0"
github "ea_origin", "0.5.0"
github "evernote", "2.0.4"
github "firefox", "1.1.3"
github "flux", "1.0.0"
github "foreman", "1.0.0"
# github "github_for_mac", "1.0.1"
# github "googledrive", "1.0.2"
github "googleearth", "1.0.0"
github "google_notifier", "1.0.1"
# github "handbrake", "1.0.1"
github "harvest", "1.0.2"
github "heroku", "2.0.0"
github "icu4c", "1.0.1"
github "imagemagick", "1.2.0"
github "imageoptim", "0.0.2"
github "induction", "1.0.0"
github "iterm2", "1.0.3"
# github "java", "1.1.0"
# github "jenkins", "0.0.7"
github "libpng", "1.0.0"
github "mongodb", "0.2.1"
# github "mysql", "1.1.0"
# github "nginx", "1.4.0"
# github "ntfs_3g", "1.0.0"
# github "nvm", "1.0.0"
## github "openssl", ""
github "opera", "0.2.0"
github "osx", "1.6.0"
github "osxfuse", "1.1.0"
github "pgadmin3", "1.0.0"
github "phantomjs", "2.0.2"
github "php", "1.1.0"
# github "python", "1.1.1"
github "redis", "0.3.0"
# github "screenhero", "1.0.1"
github "sequel_pro", "1.0.0"
github "skitch", "1.0.2"
github "skype", "1.0.4"
# github "spectacle", "1.0.0"
github "spotify", "1.0.1"
github "statsd", "1.0.3"
# github "steam", "1.0.1"
github "sublime_text_2", "1.1.2"
# github "textwrangler", "1.0.1"
github "tower", "1.0.0"
github "transmit", "1.0.1"
github "vagrant", "2.0.10"
github "virtualbox", "1.0.5"
github "vlc", "1.0.4"
# github "vmware_fusion", "1.0.0"
github "wget", "1.0.0"
# github "wkhtmltopdf", "0.1.1"
# github "zeromq", "1.0.0"

