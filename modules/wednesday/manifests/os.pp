class wednesday::os::mac {
	include osx::disable_app_quarantine
	include osx::finder::unhide_library
	include osx::finder::show_hidden_files
	include osx::global::enable_keyboard_control_access
	include osx::global::expand_save_dialog
	include osx::no_network_dsstores
	include osx::software_update

	#include osxfuse
	#include ntfs_3g
}
