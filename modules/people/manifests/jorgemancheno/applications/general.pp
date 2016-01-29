# == Description
#
# Applications that should be on all my machines
#
class people::jorgemancheno::applications::general {

  include brewcask

  # Applications
  $apps = [
    'atom',
    'appcleaner',
    'google-chrome',
    'dropbox',
    'firefox',
    'imageoptim',
    'iterm2',
    'transmit',
    'vagrant',
    'virtualbox',
    'vlc',
    'xquartz'
  ]

  # Applications that need sudo
  $sudoApps = [
    'alfred',
    'textexpander'
  ]

  # https://github.com/boxen/puppet-brewcask/issues/22#issuecomment-150398085
  sudoers { 'installer':
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
