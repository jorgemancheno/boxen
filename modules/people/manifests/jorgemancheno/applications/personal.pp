# == Description
#
# Applications that should be on all my personal (non-work) machines
#
class people::jorgemancheno::applications::personal {

  $apps = [
    'handbrake',
    '1password',
    'sonos',
    'steam',
    'transmission',
  ]

  package { $apps: provider => 'brewcask' }

}
