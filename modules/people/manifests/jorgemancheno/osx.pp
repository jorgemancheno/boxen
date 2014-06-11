# == Description
#
# My OS X setup.
#
class people::jorgemancheno::osx {

    # Global Settings
    # include osx::global::disable_key_press_and_hold # disable press-and-hold for accented character entry
    include osx::global::enable_keyboard_control_access # enables the keyboard for navigating controls in dialogs
    include osx::global::enable_standard_function_keys # enables the F1, F2, etc. keys to be treated as standard function keys
    include osx::global::expand_print_dialog # expand the print dialog by default
    include osx::global::expand_save_dialog # expand the save dialog by default
    include osx::global::disable_remote_control_ir_receiver # disable remote control infrared receiver
    # include osx::global::disable_autocorrect # disables spelling autocorrection
    include osx::global::tap_to_click # enables tap to click

    # Dock Settings
    # include osx::dock::2d # use the old flat dock style
    # include osx::dock::autohide # automatically hide the dock
    # include osx::dock::clear_dock # ensures the dock only contains apps that are running
    # include osx::dock::disable # disable the dock by setting a long autohide-delay
    include osx::dock::dim_hidden_apps # dims icons of hidden apps
    # include osx::dock::hide_indicator_lights # remove the indicator lights below running apps

    # Finder Settings
    # include osx::finder::show_external_hard_drives_on_desktop
    # include osx::finder::show_hard_drives_on_desktop
    # include osx::finder::show_mounted_servers_on_desktop
    # include osx::finder::show_removable_media_on_desktop
    include osx::finder::show_all_on_desktop # does all of the above
    include osx::finder::empty_trash_securely # enable Secure Empty Trash
    include osx::finder::unhide_library # unsets the hidden flag on ~/Library
    include osx::finder::show_hidden_files
    include osx::finder::enable_quicklook_text_selection

    # Universal Access Settings
    # include osx::universal_access::ctrl_mod_zoom # enables zoom by scrolling while holding Control
    # include osx::universal_access::enable_scrollwheel_zoom # enables zoom using the scroll wheel

    # Miscellaneous Settings
    # include osx::disable_app_quarantine # Disable the downloaded app quarantine
    include osx::no_network_dsstores # Disable creation of .DS_Store files on network shares
    include osx::software_update # Download and install software updates
    # include osx::keyboard::capslock_to_control # Remaps capslock to control on attached keyboards

}