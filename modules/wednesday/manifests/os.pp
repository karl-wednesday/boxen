class wednesday::os::mac {
	include osx::disable_app_quarantine
	include osx::finder::enable_quicklook_text_selection
	include osx::finder::unhide_library
	include osx::finder::show_hidden_files
	include osx::global::enable_keyboard_control_access
	include osx::global::expand_print_dialog
	include osx::global::expand_save_dialog
	include osx::no_network_dsstores
	include osx::software_update

	osx::recovery_message { 'If this Mac is found, please call +44 207 033 7730 or email london@wednesdayagency.com': }
}
