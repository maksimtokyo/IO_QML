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

# Utility rule file for ExperimentalUpdate.

# Include any custom commands dependencies for this target.
include td/CMakeFiles/ExperimentalUpdate.dir/compiler_depend.make

# Include the progress variables for this target.
include td/CMakeFiles/ExperimentalUpdate.dir/progress.make

td/CMakeFiles/ExperimentalUpdate:
	cd /Users/mac/IO_QML/build/Desktop_arm_darwin_generic_mach_o_64bit-Debug/td && /opt/homebrew/Cellar/cmake/3.30.5/bin/ctest -D ExperimentalUpdate

ExperimentalUpdate: td/CMakeFiles/ExperimentalUpdate
ExperimentalUpdate: td/CMakeFiles/ExperimentalUpdate.dir/build.make
.PHONY : ExperimentalUpdate

# Rule to build all files generated by this target.
td/CMakeFiles/ExperimentalUpdate.dir/build: ExperimentalUpdate
.PHONY : td/CMakeFiles/ExperimentalUpdate.dir/build

td/CMakeFiles/ExperimentalUpdate.dir/clean:
	cd /Users/mac/IO_QML/build/Desktop_arm_darwin_generic_mach_o_64bit-Debug/td && $(CMAKE_COMMAND) -P CMakeFiles/ExperimentalUpdate.dir/cmake_clean.cmake
.PHONY : td/CMakeFiles/ExperimentalUpdate.dir/clean

td/CMakeFiles/ExperimentalUpdate.dir/depend:
	cd /Users/mac/IO_QML/build/Desktop_arm_darwin_generic_mach_o_64bit-Debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/mac/IO_QML /Users/mac/IO_QML/td /Users/mac/IO_QML/build/Desktop_arm_darwin_generic_mach_o_64bit-Debug /Users/mac/IO_QML/build/Desktop_arm_darwin_generic_mach_o_64bit-Debug/td /Users/mac/IO_QML/build/Desktop_arm_darwin_generic_mach_o_64bit-Debug/td/CMakeFiles/ExperimentalUpdate.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : td/CMakeFiles/ExperimentalUpdate.dir/depend

