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
CMAKE_BINARY_DIR = /Users/mac/IO_QML/build/Desktop_arm_darwin_generic_mach_o_64bit-Debug

# Utility rule file for tl_generate_common.

# Include any custom commands dependencies for this target.
include td/td/generate/CMakeFiles/tl_generate_common.dir/compiler_depend.make

# Include the progress variables for this target.
include td/td/generate/CMakeFiles/tl_generate_common.dir/progress.make

td/td/generate/CMakeFiles/tl_generate_common: td/td/generate/generate_common
td/td/generate/CMakeFiles/tl_generate_common: /Users/mac/IO_QML/td/td/generate/auto/tlo/mtproto_api.tlo
td/td/generate/CMakeFiles/tl_generate_common: /Users/mac/IO_QML/td/td/generate/auto/tlo/secret_api.tlo
td/td/generate/CMakeFiles/tl_generate_common: /Users/mac/IO_QML/td/td/generate/auto/tlo/td_api.tlo
td/td/generate/CMakeFiles/tl_generate_common: /Users/mac/IO_QML/td/td/generate/auto/tlo/telegram_api.tlo
td/td/generate/CMakeFiles/tl_generate_common: /Users/mac/IO_QML/td/td/generate/scheme/td_api.tl
td/td/generate/CMakeFiles/tl_generate_common: /Users/mac/IO_QML/td/td/generate/DoxygenTlDocumentationGenerator.php
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/Users/mac/IO_QML/build/Desktop_arm_darwin_generic_mach_o_64bit-Debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generate common TL source files"
	cd /Users/mac/IO_QML/td/td/generate/auto && /Users/mac/IO_QML/build/Desktop_arm_darwin_generic_mach_o_64bit-Debug/td/td/generate/generate_common

tl_generate_common: td/td/generate/CMakeFiles/tl_generate_common
tl_generate_common: td/td/generate/CMakeFiles/tl_generate_common.dir/build.make
.PHONY : tl_generate_common

# Rule to build all files generated by this target.
td/td/generate/CMakeFiles/tl_generate_common.dir/build: tl_generate_common
.PHONY : td/td/generate/CMakeFiles/tl_generate_common.dir/build

td/td/generate/CMakeFiles/tl_generate_common.dir/clean:
	cd /Users/mac/IO_QML/build/Desktop_arm_darwin_generic_mach_o_64bit-Debug/td/td/generate && $(CMAKE_COMMAND) -P CMakeFiles/tl_generate_common.dir/cmake_clean.cmake
.PHONY : td/td/generate/CMakeFiles/tl_generate_common.dir/clean

td/td/generate/CMakeFiles/tl_generate_common.dir/depend:
	cd /Users/mac/IO_QML/build/Desktop_arm_darwin_generic_mach_o_64bit-Debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/mac/IO_QML /Users/mac/IO_QML/td/td/generate /Users/mac/IO_QML/build/Desktop_arm_darwin_generic_mach_o_64bit-Debug /Users/mac/IO_QML/build/Desktop_arm_darwin_generic_mach_o_64bit-Debug/td/td/generate /Users/mac/IO_QML/build/Desktop_arm_darwin_generic_mach_o_64bit-Debug/td/td/generate/CMakeFiles/tl_generate_common.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : td/td/generate/CMakeFiles/tl_generate_common.dir/depend

