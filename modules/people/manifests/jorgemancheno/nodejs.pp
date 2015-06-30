# == Description
#
# My node.js setup.
#
class people::jorgemancheno::nodejs {

    $version = "v0.12.5"

    # Set node.js version
    class { 'nodejs::global': version => $version }

    # Install some node modules
    nodejs::module { 'grunt-cli':
      node_version => $version
    }

}
