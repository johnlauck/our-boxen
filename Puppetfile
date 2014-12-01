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

github "boxen", "3.7.0"

# Support for default hiera data in modules

github "module_data", "0.0.3", :repo => "ripienaar/puppet-module-data"

# Core modules for a basic development environment. You can replace
# some/most of these if you want, but it's not recommended.

github "dnsmasq",     "2.0.0"
github "foreman",     "1.2.0"
github "gcc",         "2.2.0"
github "git",         "2.5.0"
github "go",          "1.1.0"
github "homebrew",    "1.9.5"
github "hub",         "1.3.0"
github "inifile",     "1.1.1", :repo => "puppetlabs/puppetlabs-inifile"
github "nginx",       "1.4.3"
github "nodejs",      "3.8.1"
github "openssl",     "1.0.0"
github "phantomjs",   "2.3.0"
github "pkgconfig",   "1.0.0"
github "repository",  "2.3.0"
github "ruby",        "8.1.4"
github "stdlib",      "4.2.1", :repo => "puppetlabs/puppetlabs-stdlib"
github "sudo",        "1.0.0"
github "xquartz",     "1.2.1"

# Optional/custom modules. There are tons available at
# https://github.com/boxen.

github "osx",          "2.8.0", :repo => "boxen/puppet-osx"

github "iterm2",       "1.2.2", :repo => "boxen/puppet-iterm2"
github "chrome",       "1.2.0"
github "dropbox",      "1.4.1"
github "onepassword",  "1.1.4"
github "virtualbox",   "1.0.13"
github "vagrant",      "3.2.0"
github "caffeine",     "1.0.0"
github "alfred",       "1.4.0"
github "atom",         "1.1.0"
github "omnifocus",    "1.1.0"
github "textexpander", "1.1.0"
github "evernote",     "2.0.7"
github "skitch",       "1.0.3"
github "spotify",      "1.0.2"
github "skype",        "1.0.9"
github "pgadmin3",     "1.0.0"
github "github_for_mac", "1.0.3"
github "reggy",         "1.0.2"
github "bartender",     "1.0.0"
github "vlc",           "1.1.0"
github "sourcetree",    "1.0.0"
github "flux",          "1.0.1"
github "charles",       "1.0.4"
github "rubymine",      "1.1.0"
github "macvim",        "1.0.0"
github "sublime_text_2", "1.1.2"
github "plex",           "1.0.0"
github "rdio",           "1.0.0"
github "fitbit",         "1.0.0"
github "colloquy",       "1.0.0"
github "chocolat",       "1.0.4"
github "imageoptim",      "0.0.2"
github "textmate",       "1.1.0"
# github "pathfinder",     "1.0.0", :repo => "blacktorn/puppet-pathfinder"
# github "cyberduck",     "1.0.1" # error
# github "utorrent",      "1.1.1" # eula error https://github.com/nonsense/puppet-utorrent/issues/6
# github "kindle",         "1.0.1" # error
# github "airfoil",        "0.0.1" # error
# github "pivotalbooster", "1.0.4", :repo => "gblair/puppet-pivotalbooster"

github "hub",          "1.3.0"
github "phantomjs",    "2.3.0"
github "imagemagick",  "1.3.0"
github "heroku",       "2.1.1"
github "protobuf",     "1.0.0"
github "docker",       "0.7.0"

github "zsh",          "1.0.0"
github "zshgitprompt", "1.0.2"
github "wget",         "1.0.1"
github "screen",       "1.0.0"
github "tmux",         "1.0.2"
