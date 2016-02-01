# == Description
#
# My node.js setup.
#
class people::jorgemancheno::nodejs {

    $version = "0.12.0"

    # Set node.js version
    class { 'nodejs::global': version => $version }

    # Install some node modules
    npm_module { "bower for ${version}":
      module       => 'bower',
      version      => '~> 1.7.7',
      node_version => $version,
    }

    npm_module { "grunt-cli for ${version}":
      module       => 'grunt',
      version      => '~> 0.4.5',
      node_version => $version,
    }

    npm_module { "gulp for ${version}":
      module       => 'gulp',
      version      => '~> 3.9.0',
      node_version => $version,
    }

}
