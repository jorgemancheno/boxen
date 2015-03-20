# == Description
#
# My OS X setup.
#
class people::jorgemancheno::osx {

    # Sets window appearance to Graphite. 6 = Graphite, 1 = Blue
    boxen::osx_defaults { 'Set window appearance to Graphite':
        domain => 'NSGlobalDomain',
        key    => 'AppleAquaColorVariant',
        value  => '6',
        user   => $::boxen_user,
    }

    # Sets window highlight to Graphite.
    boxen::osx_defaults { 'Set window highlight to Graphite':
        domain => 'NSGlobalDomain',
        key    => 'AppleHighlightColor',
        value  => '0.780400 0.815700 0.858800',
        user   => $::boxen_user,
    }

    # == Global Settings
    # include osx::global::disable_key_press_and_hold # disable press-and-hold for accented character entry
    include osx::global::enable_keyboard_control_access # enables the keyboard for navigating controls in dialogs
    # include osx::global::enable_standard_function_keys # enables the F1, F2, etc. keys to be treated as standard function keys
    include osx::global::expand_print_dialog # expand the print dialog by default
    include osx::global::expand_save_dialog # expand the save dialog by default
    include osx::global::disable_remote_control_ir_receiver # disable remote control infrared receiver
    # include osx::global::disable_autocorrect # disables spelling autocorrection
    # include osx::global::tap_to_click # enables tap to click

    # == Dock Settings
    # include osx::dock::2d # use the old flat dock style
    # include osx::dock::autohide # automatically hide the dock
    # include osx::dock::clear_dock # ensures the dock only contains apps that are running
    # include osx::dock::disable # disable the dock by setting a long autohide-delay
    # include osx::dock::disable_dashboard # disable the dashboard
    include osx::dock::dim_hidden_apps # dims icons of hidden apps
    # include osx::dock::hide_indicator_lights # remove the indicator lights below running apps

    # == Finder Settings
    # include osx::finder::show_external_hard_drives_on_desktop
    # include osx::finder::show_hard_drives_on_desktop
    # include osx::finder::show_mounted_servers_on_desktop
    # include osx::finder::show_removable_media_on_desktop
    include osx::finder::show_all_on_desktop # does all of the above
    include osx::finder::empty_trash_securely # enable Secure Empty Trash
    include osx::finder::unhide_library # unsets the hidden flag on ~/Library
    # include osx::finder::show_hidden_files
    include osx::finder::enable_quicklook_text_selection
    include osx::finder::show_warning_before_emptying_trash
    include osx::finder::show_warning_before_changing_an_extension
    include osx::finder::show_all_filename_extensions
    include osx::finder::no_file_extension_warnings

    # == Universal Access Settings
    # include osx::universal_access::ctrl_mod_zoom # enables zoom by scrolling while holding Control
    # include osx::universal_access::enable_scrollwheel_zoom # enables zoom using the scroll wheel

    # == Miscellaneous Settings
    include osx::disable_app_quarantine # Disable the downloaded app quarantine
    include osx::no_network_dsstores # Disable creation of .DS_Store files on network shares
    include osx::software_update # Download and install software updates
    # include osx::keyboard::capslock_to_control # Remaps capslock to control on attached keyboards

    # == Customizable Settings

    # osx::global::key_repeat_delay
    # The amount of time (in ms) before a key starts repeating
    #
    # Set the default value (35)
    # include osx::global::key_repeat_delay
    #
    # class { 'osx::global::key_repeat_delay':
    #     delay => 35
    # }

    # osx::global::key_repeat_rate
    # The amount of time (in ms) before key repeat 'presses'
    #
    # Set the default value (0)
    # include osx::global::key_repeat_rate
    #
    # class { 'osx::global::key_repeat_rate':
    #   rate => 0
    # }

    # osx::global::natural_mouse_scrolling
    # Enable/disable 'natural' mouse scrolling. Requires re-login for new settings to initialize.
    #
    # Set the default value (enabled=true)
    include osx::global::natural_mouse_scrolling
    #
    # class { 'osx::global::natural_mouse_scrolling':
    #     delay => false
    # }

    # osx::universal_access::cursor_size
    # The amount the cursor will be zoomed
    #
    # Set the default value (1.5)
    # include osx::universal_access::cursor_size
    #
    class { 'osx::universal_access::cursor_size':
        zoom => 2
    }

    # osx::dock::icon_size
    # The size of the dock icons, in pixels
    #
    # Set the default value (36)
    # include osx::dock::icon_size
    #
    class { 'osx::dock::icon_size':
        size => 36
    }

    # osx::dock::position
    # The location of the dock on the screen ('right', 'left', 'top', 'bottom')
    #
    # Set the default value ('right')
    # include osx::dock::position
    #
    class { 'osx::dock::position':
        position => 'right'
    }

    # osx::dock::pin_position
    # The location to pin the dock to ('start', 'middle', 'end')
    #
    # Set the default value ('start')
    # include osx::dock::pin_position
    #
    class { 'osx::dock::pin_position':
        position => 'middle'
    }

    # osx::dock::hot_corner
    # Configure the action for a hot corner
    #
    # Make the top left corner display the Dashboard
    # osx::dock::hot_corner { 'Top Left':
    #     action => 'Dashboard'
    # }

    # Make the top left corner start the screensaver
    osx::dock::hot_corner { 'Top Left':
        action => 'Start Screen Saver'
    }

    # Make the bottom right corner show the desktop
    # osx::dock::hot_corner { 'Show the desktop':
    #     position => 'Bottom Right',
    #     action => 'Desktop'
    # }

    # Make the bottom left corner put the display to sleep
    osx::dock::hot_corner { 'Bottom Left':
        action => 'Put Display to Sleep'
    }

    # osx::dock::hot_corners
    # Configure the hot corners
    #
    # Make the top right corner start the screen saver and the bottom left corner launch Mission Control
    #
    # class { 'osx::dock::hot_corners':
    #     top_right => "Start Screen Saver",
    #     bottom_left => "Mission Control"
    # }

    # osx::sound::interface_sound_effects
    # Enable interface sound effects (true, false)
    #
    # Set the default value (true)
    # include osx::sound::interface_sound_effects
    #
    class { 'osx::sound::interface_sound_effects':
        enable => false
    }

    # osx::mouse::button_mode
    # The button mode for multitouch mice (1, 2) Requires re-login for new settings to initialize.
    #
    # Set the default mode (1)
    # include osx::mouse::button_mode
    #
    class { 'osx::mouse::button_mode':
        mode => 2
    }

    # osx::mouse::smart_zoom
    # Enable/disable smart zoom for multitouch mice Requires re-login for new settings to initialize.
    #
    # Set the default value (enabled=false)
    # include osx::mouse::smart_zoom
    #
    # class { 'osx::mouse::smart_zoom':
    #     enabled => true
    # }

    # osx::mouse::swipe_between_pages
    # Enable/disable swipe between pages for multitouch mice Requires re-login for new settings to initialize.
    #
    # Set the default value (enabled=false)
    # include osx::mouse::swipe_between_pages
    #
    # class { 'osx::mouse::swipe_between_pages':
    #     enabled => true
    # }

    # osx::dock::magnification
    # Size of dock icon magnification
    #
    # Set the default value (true, 128)
    # include osx::dock::magnification
    #
    # class { 'osx::dock::magnification':
    #     magnification => true,
    #     magnification_size => 84
    # }
}