# == Description
#
# Applications that should be on all my work machines
#
class people::jorgemancheno::applications::work {

    include autoconf
    include charles
    # include firefox::aurora
    # include firefox::nightly
    include libpng
    include libtool
    include mysql
    include pcre
    # include php
    include wget

    # class { 'php::global':
    #     version => '5.5.13'
    # }
}