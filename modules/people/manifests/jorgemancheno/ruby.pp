# == Description
#
# My ruby setup.
#
class people::jorgemancheno::ruby {

    $version = "2.2.2"

    # Set ruby version
    class { 'ruby::global': version => $version }

    # Install some gems
    ruby_gem { "sass for ${version}":
      gem           => 'sass',
      version       => '~> 3.4.21',
      ruby_version  => $version,
    }

    ruby_gem { "lunchy for ${version}":
      gem           => 'lunchy',
      version       => '~> 0.10.4',
      ruby_version  => $version,
    }

}
