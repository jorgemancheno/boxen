# == Description
#
# Applications that should be on all my machines
#
class people::jorgemancheno::applications::general {

    # Applications
    include adium
    include appcleaner
    include alfred
    include better_touch_tools
    include charles
    include chrome::dev
    include chrome::canary
    include codekit
    include dropbox
    include firefox
    include github_for_mac
    include gitx::dev
    include imageoptim
    include istatmenus4
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