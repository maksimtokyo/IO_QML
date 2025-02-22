# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.30

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /opt/homebrew/Cellar/cmake/3.30.5/bin/cmake

# The command to remove a file.
RM = /opt/homebrew/Cellar/cmake/3.30.5/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/mac/IO_QML

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/mac/IO_QML/build/Desktop_arm_darwin_generic_mach_o_64bit-Profile

# Utility rule file for appIO_QML_qmltyperegistration.

# Include any custom commands dependencies for this target.
include CMakeFiles/appIO_QML_qmltyperegistration.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/appIO_QML_qmltyperegistration.dir/progress.make

CMakeFiles/appIO_QML_qmltyperegistration: appio_qml_qmltyperegistrations.cpp
CMakeFiles/appIO_QML_qmltyperegistration: IO_QML/appIO_QML.qmltypes

appio_qml_qmltyperegistrations.cpp: qmltypes/appIO_QML_foreign_types.txt
appio_qml_qmltyperegistrations.cpp: meta_types/qt6appio_qml_relwithdebinfo_metatypes.json
appio_qml_qmltyperegistrations.cpp: /Users/mac/6.7.2/macos/./libexec/qmltyperegistrar
appio_qml_qmltyperegistrations.cpp: /Users/mac/6.7.2/macos/metatypes/qt6core_relwithdebinfo_metatypes.json
appio_qml_qmltyperegistrations.cpp: /Users/mac/6.7.2/macos/metatypes/qt6qml_relwithdebinfo_metatypes.json
appio_qml_qmltyperegistrations.cpp: /Users/mac/6.7.2/macos/metatypes/qt6qmlbuiltins_relwithdebinfo_metatypes.json
appio_qml_qmltyperegistrations.cpp: /Users/mac/6.7.2/macos/metatypes/qt6network_relwithdebinfo_metatypes.json
appio_qml_qmltyperegistrations.cpp: /Users/mac/6.7.2/macos/metatypes/qt6quick_relwithdebinfo_metatypes.json
appio_qml_qmltyperegistrations.cpp: /Users/mac/6.7.2/macos/metatypes/qt6gui_relwithdebinfo_metatypes.json
appio_qml_qmltyperegistrations.cpp: /Users/mac/6.7.2/macos/metatypes/qt6qmlmodels_relwithdebinfo_metatypes.json
appio_qml_qmltyperegistrations.cpp: /Users/mac/6.7.2/macos/metatypes/qt6opengl_relwithdebinfo_metatypes.json
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/Users/mac/IO_QML/build/Desktop_arm_darwin_generic_mach_o_64bit-Profile/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Automatic QML type registration for target appIO_QML"
	/Users/mac/6.7.2/macos/libexec/qmltyperegistrar --generate-qmltypes=/Users/mac/IO_QML/build/Desktop_arm_darwin_generic_mach_o_64bit-Profile/IO_QML/appIO_QML.qmltypes --import-name=IO_QML --major-version=1 --minor-version=0 @/Users/mac/IO_QML/build/Desktop_arm_darwin_generic_mach_o_64bit-Profile/qmltypes/appIO_QML_foreign_types.txt -o /Users/mac/IO_QML/build/Desktop_arm_darwin_generic_mach_o_64bit-Profile/appio_qml_qmltyperegistrations.cpp /Users/mac/IO_QML/build/Desktop_arm_darwin_generic_mach_o_64bit-Profile/meta_types/qt6appio_qml_relwithdebinfo_metatypes.json
	/opt/homebrew/Cellar/cmake/3.30.5/bin/cmake -E make_directory /Users/mac/IO_QML/build/Desktop_arm_darwin_generic_mach_o_64bit-Profile/.qt/qmltypes
	/opt/homebrew/Cellar/cmake/3.30.5/bin/cmake -E touch /Users/mac/IO_QML/build/Desktop_arm_darwin_generic_mach_o_64bit-Profile/.qt/qmltypes/appIO_QML.qmltypes

IO_QML/appIO_QML.qmltypes: appio_qml_qmltyperegistrations.cpp
	@$(CMAKE_COMMAND) -E touch_nocreate IO_QML/appIO_QML.qmltypes

meta_types/qt6appio_qml_relwithdebinfo_metatypes.json: meta_types/qt6appio_qml_relwithdebinfo_metatypes.json.gen
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/Users/mac/IO_QML/build/Desktop_arm_darwin_generic_mach_o_64bit-Profile/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Generating meta_types/qt6appio_qml_relwithdebinfo_metatypes.json"
	/opt/homebrew/Cellar/cmake/3.30.5/bin/cmake -E true

meta_types/qt6appio_qml_relwithdebinfo_metatypes.json.gen: /Users/mac/6.7.2/macos/./libexec/moc
meta_types/qt6appio_qml_relwithdebinfo_metatypes.json.gen: meta_types/appIO_QML_json_file_list.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/Users/mac/IO_QML/build/Desktop_arm_darwin_generic_mach_o_64bit-Profile/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Running moc --collect-json for target appIO_QML"
	/Users/mac/6.7.2/macos/libexec/moc -o /Users/mac/IO_QML/build/Desktop_arm_darwin_generic_mach_o_64bit-Profile/meta_types/qt6appio_qml_relwithdebinfo_metatypes.json.gen --collect-json @/Users/mac/IO_QML/build/Desktop_arm_darwin_generic_mach_o_64bit-Profile/meta_types/appIO_QML_json_file_list.txt
	/opt/homebrew/Cellar/cmake/3.30.5/bin/cmake -E copy_if_different /Users/mac/IO_QML/build/Desktop_arm_darwin_generic_mach_o_64bit-Profile/meta_types/qt6appio_qml_relwithdebinfo_metatypes.json.gen /Users/mac/IO_QML/build/Desktop_arm_darwin_generic_mach_o_64bit-Profile/meta_types/qt6appio_qml_relwithdebinfo_metatypes.json

meta_types/appIO_QML_json_file_list.txt: /Users/mac/6.7.2/macos/./libexec/cmake_automoc_parser
meta_types/appIO_QML_json_file_list.txt: appIO_QML_autogen/timestamp
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/Users/mac/IO_QML/build/Desktop_arm_darwin_generic_mach_o_64bit-Profile/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Running AUTOMOC file extraction for target appIO_QML"
	/Users/mac/6.7.2/macos/libexec/cmake_automoc_parser --cmake-autogen-cache-file /Users/mac/IO_QML/build/Desktop_arm_darwin_generic_mach_o_64bit-Profile/CMakeFiles/appIO_QML_autogen.dir/ParseCache.txt --cmake-autogen-info-file /Users/mac/IO_QML/build/Desktop_arm_darwin_generic_mach_o_64bit-Profile/CMakeFiles/appIO_QML_autogen.dir/AutogenInfo.json --output-file-path /Users/mac/IO_QML/build/Desktop_arm_darwin_generic_mach_o_64bit-Profile/meta_types/appIO_QML_json_file_list.txt --timestamp-file-path /Users/mac/IO_QML/build/Desktop_arm_darwin_generic_mach_o_64bit-Profile/meta_types/appIO_QML_json_file_list.txt.timestamp --cmake-autogen-include-dir-path /Users/mac/IO_QML/build/Desktop_arm_darwin_generic_mach_o_64bit-Profile/appIO_QML_autogen/include

appIO_QML_autogen/timestamp: /Users/mac/6.7.2/macos/./libexec/moc
appIO_QML_autogen/timestamp: CMakeFiles/appIO_QML_qmltyperegistration.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/Users/mac/IO_QML/build/Desktop_arm_darwin_generic_mach_o_64bit-Profile/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Automatic MOC and UIC for target appIO_QML"
	/opt/homebrew/Cellar/cmake/3.30.5/bin/cmake -E cmake_autogen /Users/mac/IO_QML/build/Desktop_arm_darwin_generic_mach_o_64bit-Profile/CMakeFiles/appIO_QML_autogen.dir/AutogenInfo.json RelWithDebInfo
	/opt/homebrew/Cellar/cmake/3.30.5/bin/cmake -E touch /Users/mac/IO_QML/build/Desktop_arm_darwin_generic_mach_o_64bit-Profile/appIO_QML_autogen/timestamp

appIO_QML_qmltyperegistration: CMakeFiles/appIO_QML_qmltyperegistration
appIO_QML_qmltyperegistration: IO_QML/appIO_QML.qmltypes
appIO_QML_qmltyperegistration: appIO_QML_autogen/timestamp
appIO_QML_qmltyperegistration: appio_qml_qmltyperegistrations.cpp
appIO_QML_qmltyperegistration: meta_types/appIO_QML_json_file_list.txt
appIO_QML_qmltyperegistration: meta_types/qt6appio_qml_relwithdebinfo_metatypes.json
appIO_QML_qmltyperegistration: meta_types/qt6appio_qml_relwithdebinfo_metatypes.json.gen
appIO_QML_qmltyperegistration: CMakeFiles/appIO_QML_qmltyperegistration.dir/build.make
.PHONY : appIO_QML_qmltyperegistration

# Rule to build all files generated by this target.
CMakeFiles/appIO_QML_qmltyperegistration.dir/build: appIO_QML_qmltyperegistration
.PHONY : CMakeFiles/appIO_QML_qmltyperegistration.dir/build

CMakeFiles/appIO_QML_qmltyperegistration.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/appIO_QML_qmltyperegistration.dir/cmake_clean.cmake
.PHONY : CMakeFiles/appIO_QML_qmltyperegistration.dir/clean

CMakeFiles/appIO_QML_qmltyperegistration.dir/depend:
	cd /Users/mac/IO_QML/build/Desktop_arm_darwin_generic_mach_o_64bit-Profile && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/mac/IO_QML /Users/mac/IO_QML /Users/mac/IO_QML/build/Desktop_arm_darwin_generic_mach_o_64bit-Profile /Users/mac/IO_QML/build/Desktop_arm_darwin_generic_mach_o_64bit-Profile /Users/mac/IO_QML/build/Desktop_arm_darwin_generic_mach_o_64bit-Profile/CMakeFiles/appIO_QML_qmltyperegistration.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/appIO_QML_qmltyperegistration.dir/depend

