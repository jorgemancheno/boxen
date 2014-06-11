# == Description
#
# My dotfiles setup.
#
class people::jorgemancheno::dotfiles {

    include git

    $directories = {
        home     => "/Users/${::boxen_user}",
        repos    => "/Users/${::boxen_user}/Code",
        dotfiles => "/Users/${::boxen_user}/Code/dotfiles"
    }

    file { "${directories['repos']}":
        ensure => "directory"
    }
    ~> repository { "${directories['dotfiles']}":
        source  => "jorgemancheno/dotfiles",
        require => File["${directories['repos']}"]
    }
    ~> exec { "Install dotfiles":
        cwd         => "${directories['dotfiles']}",
        command     => "./sync.sh --force",
        provider    => shell,
        refreshonly => true,
        require     => Repository["${directories['dotfiles']}"]
    }
}