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

# Utility rule file for NightlyCoverage.

# Include any custom commands dependencies for this target.
include td/CMakeFiles/NightlyCoverage.dir/compiler_depend.make

# Include the progress variables for this target.
include td/CMakeFiles/NightlyCoverage.dir/progress.make

td/CMakeFiles/NightlyCoverage:
	cd /Users/mac/IO_QML/build/Desktop_arm_darwin_generic_mach_o_64bit-Profile/td && /opt/homebrew/Cellar/cmake/3.30.5/bin/ctest -D NightlyCoverage

NightlyCoverage: td/CMakeFiles/NightlyCoverage
NightlyCoverage: td/CMakeFiles/NightlyCoverage.dir/build.make
.PHONY : NightlyCoverage

# Rule to build all files generated by this target.
td/CMakeFiles/NightlyCoverage.dir/build: NightlyCoverage
.PHONY : td/CMakeFiles/NightlyCoverage.dir/build

td/CMakeFiles/NightlyCoverage.dir/clean:
	cd /Users/mac/IO_QML/build/Desktop_arm_darwin_generic_mach_o_64bit-Profile/td && $(CMAKE_COMMAND) -P CMakeFiles/NightlyCoverage.dir/cmake_clean.cmake
.PHONY : td/CMakeFiles/NightlyCoverage.dir/clean

td/CMakeFiles/NightlyCoverage.dir/depend:
	cd /Users/mac/IO_QML/build/Desktop_arm_darwin_generic_mach_o_64bit-Profile && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/mac/IO_QML /Users/mac/IO_QML/td /Users/mac/IO_QML/build/Desktop_arm_darwin_generic_mach_o_64bit-Profile /Users/mac/IO_QML/build/Desktop_arm_darwin_generic_mach_o_64bit-Profile/td /Users/mac/IO_QML/build/Desktop_arm_darwin_generic_mach_o_64bit-Profile/td/CMakeFiles/NightlyCoverage.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : td/CMakeFiles/NightlyCoverage.dir/depend

