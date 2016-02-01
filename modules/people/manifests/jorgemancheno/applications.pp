# == Description
#
# Applications for all my machines.
#
# == Parameters
#
# [*system_roles*]
#   An array of the roles that this system participates in.
#   Valid values are 'work' and 'personal'. If not passed in,
#   it is looked up in hiera using the key 'people::jorgemancheno::system_roles'
#
class people::jorgemancheno::applications (
    $system_roles = undef
) {

    $_system_roles = hiera_array('people::jorgemancheno::system_roles', [])
    $roles = $system_roles ? { undef => $_system_roles, default => $system_roles }

    include brewcask
    include people::jorgemancheno::applications::general

    if member($roles, 'work') {
        include 'people::jorgemancheno::applications::work'
    }
    elsif member($roles, 'personal') {
        include 'people::jorgemancheno::applications::personal'
    }
}
