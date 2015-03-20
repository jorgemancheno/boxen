# == Description
#
# Applications that should be on all my machines
#
class people::jorgemancheno::applications::general {

    # Applications
    include appcleaner
    include alfred
    include chrome
    include chrome::dev
    include chrome::canary
    # include codekit
    include dropbox
    include firefox
    include firefox::beta
    # include firefox::aurora
    include github_for_mac
    include imageoptim
    include iterm2::dev
    include rdio
    include sequel_pro
    include sublime_text
    include transmit
    include vagrant
    include virtualbox
    include vlc
    include xquartz

}