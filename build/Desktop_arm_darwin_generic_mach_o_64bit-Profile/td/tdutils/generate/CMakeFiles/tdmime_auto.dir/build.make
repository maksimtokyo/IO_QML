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

# Utility rule file for tdmime_auto.

# Include any custom commands dependencies for this target.
include td/tdutils/generate/CMakeFiles/tdmime_auto.dir/compiler_depend.make

# Include the progress variables for this target.
include td/tdutils/generate/CMakeFiles/tdmime_auto.dir/progress.make

td/tdutils/generate/CMakeFiles/tdmime_auto: /Users/mac/IO_QML/td/tdutils/generate/auto/mime_type_to_extension.cpp
td/tdutils/generate/CMakeFiles/tdmime_auto: /Users/mac/IO_QML/td/tdutils/generate/auto/extension_to_mime_type.cpp

/Users/mac/IO_QML/td/tdutils/generate/auto/extension_to_mime_type.cpp: /Users/mac/IO_QML/td/tdutils/generate/auto/extension_to_mime_type.gperf
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/Users/mac/IO_QML/build/Desktop_arm_darwin_generic_mach_o_64bit-Profile/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating /Users/mac/IO_QML/td/tdutils/generate/auto/extension_to_mime_type.cpp"
	cd /Users/mac/IO_QML/td/tdutils/generate && /usr/bin/gperf -m100 auto/extension_to_mime_type.gperf | grep -v __gnu_inline__ > auto/extension_to_mime_type.cpp

/Users/mac/IO_QML/td/tdutils/generate/auto/mime_type_to_extension.cpp: /Users/mac/IO_QML/td/tdutils/generate/auto/mime_type_to_extension.gperf
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/Users/mac/IO_QML/build/Desktop_arm_darwin_generic_mach_o_64bit-Profile/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Generating /Users/mac/IO_QML/td/tdutils/generate/auto/mime_type_to_extension.cpp"
	cd /Users/mac/IO_QML/td/tdutils/generate && /usr/bin/gperf -m100 auto/mime_type_to_extension.gperf | grep -v __gnu_inline__ > auto/mime_type_to_extension.cpp

/Users/mac/IO_QML/td/tdutils/generate/auto/mime_type_to_extension.gperf: td/tdutils/generate/generate_mime_types_gperf
/Users/mac/IO_QML/td/tdutils/generate/auto/mime_type_to_extension.gperf: /Users/mac/IO_QML/td/tdutils/generate/mime_types.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/Users/mac/IO_QML/build/Desktop_arm_darwin_generic_mach_o_64bit-Profile/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Generating /Users/mac/IO_QML/td/tdutils/generate/auto/mime_type_to_extension.gperf, /Users/mac/IO_QML/td/tdutils/generate/auto/extension_to_mime_type.gperf"
	cd /Users/mac/IO_QML/td/tdutils/generate && /Users/mac/IO_QML/build/Desktop_arm_darwin_generic_mach_o_64bit-Profile/td/tdutils/generate/generate_mime_types_gperf mime_types.txt /Users/mac/IO_QML/td/tdutils/generate/auto/mime_type_to_extension.gperf /Users/mac/IO_QML/td/tdutils/generate/auto/extension_to_mime_type.gperf

/Users/mac/IO_QML/td/tdutils/generate/auto/extension_to_mime_type.gperf: /Users/mac/IO_QML/td/tdutils/generate/auto/mime_type_to_extension.gperf
	@$(CMAKE_COMMAND) -E touch_nocreate /Users/mac/IO_QML/td/tdutils/generate/auto/extension_to_mime_type.gperf

tdmime_auto: td/tdutils/generate/CMakeFiles/tdmime_auto
tdmime_auto: /Users/mac/IO_QML/td/tdutils/generate/auto/extension_to_mime_type.cpp
tdmime_auto: /Users/mac/IO_QML/td/tdutils/generate/auto/extension_to_mime_type.gperf
tdmime_auto: /Users/mac/IO_QML/td/tdutils/generate/auto/mime_type_to_extension.cpp
tdmime_auto: /Users/mac/IO_QML/td/tdutils/generate/auto/mime_type_to_extension.gperf
tdmime_auto: td/tdutils/generate/CMakeFiles/tdmime_auto.dir/build.make
.PHONY : tdmime_auto

# Rule to build all files generated by this target.
td/tdutils/generate/CMakeFiles/tdmime_auto.dir/build: tdmime_auto
.PHONY : td/tdutils/generate/CMakeFiles/tdmime_auto.dir/build

td/tdutils/generate/CMakeFiles/tdmime_auto.dir/clean:
	cd /Users/mac/IO_QML/build/Desktop_arm_darwin_generic_mach_o_64bit-Profile/td/tdutils/generate && $(CMAKE_COMMAND) -P CMakeFiles/tdmime_auto.dir/cmake_clean.cmake
.PHONY : td/tdutils/generate/CMakeFiles/tdmime_auto.dir/clean

td/tdutils/generate/CMakeFiles/tdmime_auto.dir/depend:
	cd /Users/mac/IO_QML/build/Desktop_arm_darwin_generic_mach_o_64bit-Profile && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/mac/IO_QML /Users/mac/IO_QML/td/tdutils/generate /Users/mac/IO_QML/build/Desktop_arm_darwin_generic_mach_o_64bit-Profile /Users/mac/IO_QML/build/Desktop_arm_darwin_generic_mach_o_64bit-Profile/td/tdutils/generate /Users/mac/IO_QML/build/Desktop_arm_darwin_generic_mach_o_64bit-Profile/td/tdutils/generate/CMakeFiles/tdmime_auto.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : td/tdutils/generate/CMakeFiles/tdmime_auto.dir/depend

