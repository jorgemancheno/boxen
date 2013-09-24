class people::jorgemancheno {
    # Applications
    include adium
    include appcleaner
    include alfred
    include better_touch_tools
    include charles
    include chrome::dev
    include chrome::canary
    include codekit
    include dropbox
    include firefox
    include github_for_mac
    include gitx::dev
    include imageoptim
    include istatmenus4
    include iterm2::dev
    include rdio
    include sequel_pro
    include sublime_text
    include transmit
    include tunnelblick
    include vagrant
    include virtualbox
    include vlc
    include xquartz

    # Machine-specific apps
    case $::hostname {
        'ares': {
            include handbrake
            include onepassword
            include transmission
        }
        default: {}
    }

    # Configuration Setup
    $env = {
        directories => {
            home     => "/Users/${::boxen_user}",
            repos    => "/Users/${::boxen_user}/Code",
            dotfiles => "/Users/${::boxen_user}/Code/dotfiles"
        },
        versions => {
            ruby   => "2.0.0",
            nodejs => "v0.10.18"
        }
    }

    # Dotfile Setup
    file { "${env['directories']['repos']}":
        ensure => "directory"
    }
    ~> repository { "${env['directories']['dotfiles']}":
        source  => "jorgemancheno/dotfiles",
        require => File["${env['directories']['repos']}"]
    }
    ~> exec { "Install dotfiles":
        cwd         => "${env['directories']['dotfiles']}",
        command     => "./sync.sh --force",
        provider    => shell,
        refreshonly => true,
        require     => Repository["${env['directories']['dotfiles']}"]
    }

    # Set ruby version
    class { 'ruby::global': version => $env['versions']['ruby'] }

    # Install SASS
    ruby::gem { "sass for ${env['versions']['ruby']}":
      gem     => 'sass',
      ruby    => $env['versions']['ruby'],
      version => '~> 3.2.10'
    }

    # Install lunchy
    ruby::gem { "lunchy for ${env['versions']['ruby']}":
      gem     => 'lunchy',
      ruby    => $env['versions']['ruby'],
      version => '~> 0.7.0'
    }

    # Set node.js version
    class { 'nodejs::global': version => $env['versions']['nodejs'] }

    # Install some node modules
    nodejs::module { 'grunt-cli':
      node_version => $env['versions']['nodejs']
    }
}