# == Description
#
# Applications that should be on all my machines
#
class people::jorgemancheno::applications::general {

  # Applications
  $apps = [
    'appcleaner',
    'atom',
    'bartender',
    'boom',
    'dropbox',
    'firefox',
    'framer-studio',
    'github-desktop',
    'google-chrome',
    'imageoptim',
    'istat-menus',
    'iterm2',
    'kaleidoscope',
    'keepingyouawake',
    'messenger',
    'numi',
    'sketch',
    'slack',
    'the-unarchiver',
    'transmit',
    'vagrant',
    'virtualbox',
    'vlc',
    'xquartz'
  ]

  # Applications that need sudo
  $sudoApps = [
    'alfred',
    'moom',
    'textexpander'
  ]

  # https://github.com/boxen/puppet-brewcask/issues/22#issuecomment-150398085
  sudoers { "installer":
    users    => $::boxen_user,
    hosts    => 'ALL',
    commands => [
      '(ALL) SETENV:NOPASSWD: /usr/sbin/installer',
    ],
    type     => 'user_spec',
  }

  Package { provider => 'brewcask' }
  package { $apps: }
  package {
    $sudoApps: require  => [ Homebrew::Tap['caskroom/cask'], Sudoers['installer'] ],
  }

}
