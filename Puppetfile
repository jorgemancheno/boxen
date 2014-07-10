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
github "autoconf",           "1.0.0"
github "adium",              "1.4.0"
github "appcleaner",         "1.0.0"
github "alfred" ,            "1.2.0"
github "better_touch_tools", "2.0.0"
github "charles",            "1.0.4"
github "chrome",             "1.1.2"
github "codekit",            "1.0.4"
github "dropbox",            "1.2.0"
github "firefox",            "1.2.1"
github "github_for_mac",     "1.0.3"
github "handbrake",          "1.0.1"
github "imageoptim",         "0.0.2"
github "istatmenus4",        "1.1.0"
github "iterm2",             "1.1.1"
github "libpng",             "1.0.0"
github "libtool",            "1.0.0"
github "mysql",              "1.2.0"
github "onepassword",        "1.1.2"
github "osx",                "2.7.0"
github "pcre",               "1.0.0"
github "php",                "1.2.4"
github "rdio",               "1.0.0"
github "sequel_pro",         "1.0.1"
github "sublime_text",       "1.0.1"
github "transmission",       "1.1.0"
github "transmit",           "1.0.2"
github "vagrant",            "3.1.1"
github "virtualbox",         "1.0.12"
github "vlc",                "1.1.0"
github "wget",               "1.0.1"
