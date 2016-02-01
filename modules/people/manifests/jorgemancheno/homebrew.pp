# == Description
#
# My homebrew setup.
#
class people::jorgemancheno::homebrew {

    # Install archey
    package { "archey":
      ensure => present
    }
}
