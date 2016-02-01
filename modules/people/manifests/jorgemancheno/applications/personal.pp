# == Description
#
# Applications that should be on all my personal (non-work) machines
#
class people::jorgemancheno::applications::personal {

  $apps = [
    'handrake',
    '1password'
    'sonos',
    'transmission'
  ]

  package { $apps: provider => 'brewcask' }

}
