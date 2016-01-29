# == Description
#
# My node.js setup.
#
class people::jorgemancheno::nodejs {

    $version = "v0.12.0"

    # Set node.js version
    #class { 'nodejs::global': version => $version }

    # Install some node modules
    #nodejs::module { 'bower':
    #  node_version => $version
    #}

    #nodejs::module { 'grunt-cli':
    #  node_version => $version
    #}

}
