# == Description
#
# Applications that should be on all my personal (non-work) machines
#
class people::jorgemancheno::applications::personal {

    include handbrake
    include onepassword
    include sonos
    include transmission

}
