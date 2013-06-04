class people::jorgemancheno {
    include adium
    include alfred
    include better_touch_tools
    include chrome::dev
    include codekit
    include dropbox
    include firefox
    include gitx::dev
    include istatmenus4
    include iterm2::dev
    include nodejs::v0_10
    include rdio
    include sequel_pro
    include transmit
    include vlc

    # nodejs::module { ['coffee-script', 'meteorite']:
    #    node_version => 'v0.10'
    # }

    class { 'nodejs::global':
        version => 'v0.10'
    }
}