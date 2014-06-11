class people::jorgemancheno {

    include people::jorgemancheno::dotfiles
    include people::jorgemancheno::applications

    # Configuration Setup
    $env = {
        versions => {
            ruby   => "2.1.1",
            nodejs => "v0.10.18"
        }
    }

    # Set ruby version
    # class { 'ruby::global': version => $env['versions']['ruby'] }

    # Install SASS
    ruby_gem { "sass for ${env['versions']['ruby']}":
      gem     => 'sass',
      ruby_version    => $env['versions']['ruby'],
      version => '~> 3.3.4'
    }

    # Install lunchy
    ruby_gem { "lunchy for ${env['versions']['ruby']}":
      gem     => 'lunchy',
      ruby_version    => $env['versions']['ruby'],
      version => '~> 0.7.0'
    }

    # Set node.js version
    class { 'nodejs::global': version => $env['versions']['nodejs'] }

    # Install some node modules
    nodejs::module { 'grunt-cli':
      node_version => $env['versions']['nodejs']
    }
}