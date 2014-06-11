# == Description
#
# My ruby setup.
#
class people::jorgemancheno::ruby {

    $version = "2.1.1"

    # # Set ruby version
    # # class { 'ruby::global': version => $version }

    # Install SASS
    ruby_gem { "sass for ${version}":
      gem     => 'sass',
      ruby_version    => $version,
      version => '~> 3.3.4'
    }

    # Install lunchy
    ruby_gem { "lunchy for ${version}":
      gem     => 'lunchy',
      ruby_version    => $version,
      version => '~> 0.7.0'
    }

}