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
CMAKE_BINARY_DIR = /Users/mac/IO_QML/build/Desktop_arm_darwin_generic_mach_o_64bit-RelWithDebInfo

# Include any dependencies generated for this target.
include td/CMakeFiles/tdclient.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include td/CMakeFiles/tdclient.dir/compiler_depend.make

# Include the progress variables for this target.
include td/CMakeFiles/tdclient.dir/progress.make

# Include the compile flags for this target's objects.
include td/CMakeFiles/tdclient.dir/flags.make

td/CMakeFiles/tdclient.dir/td/telegram/Client.cpp.o: td/CMakeFiles/tdclient.dir/flags.make
td/CMakeFiles/tdclient.dir/td/telegram/Client.cpp.o: /Users/mac/IO_QML/td/td/telegram/Client.cpp
td/CMakeFiles/tdclient.dir/td/telegram/Client.cpp.o: td/CMakeFiles/tdclient.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/mac/IO_QML/build/Desktop_arm_darwin_generic_mach_o_64bit-RelWithDebInfo/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object td/CMakeFiles/tdclient.dir/td/telegram/Client.cpp.o"
	cd /Users/mac/IO_QML/build/Desktop_arm_darwin_generic_mach_o_64bit-RelWithDebInfo/td && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT td/CMakeFiles/tdclient.dir/td/telegram/Client.cpp.o -MF CMakeFiles/tdclient.dir/td/telegram/Client.cpp.o.d -o CMakeFiles/tdclient.dir/td/telegram/Client.cpp.o -c /Users/mac/IO_QML/td/td/telegram/Client.cpp

td/CMakeFiles/tdclient.dir/td/telegram/Client.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/tdclient.dir/td/telegram/Client.cpp.i"
	cd /Users/mac/IO_QML/build/Desktop_arm_darwin_generic_mach_o_64bit-RelWithDebInfo/td && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/mac/IO_QML/td/td/telegram/Client.cpp > CMakeFiles/tdclient.dir/td/telegram/Client.cpp.i

td/CMakeFiles/tdclient.dir/td/telegram/Client.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/tdclient.dir/td/telegram/Client.cpp.s"
	cd /Users/mac/IO_QML/build/Desktop_arm_darwin_generic_mach_o_64bit-RelWithDebInfo/td && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/mac/IO_QML/td/td/telegram/Client.cpp -o CMakeFiles/tdclient.dir/td/telegram/Client.cpp.s

td/CMakeFiles/tdclient.dir/td/telegram/Log.cpp.o: td/CMakeFiles/tdclient.dir/flags.make
td/CMakeFiles/tdclient.dir/td/telegram/Log.cpp.o: /Users/mac/IO_QML/td/td/telegram/Log.cpp
td/CMakeFiles/tdclient.dir/td/telegram/Log.cpp.o: td/CMakeFiles/tdclient.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/mac/IO_QML/build/Desktop_arm_darwin_generic_mach_o_64bit-RelWithDebInfo/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object td/CMakeFiles/tdclient.dir/td/telegram/Log.cpp.o"
	cd /Users/mac/IO_QML/build/Desktop_arm_darwin_generic_mach_o_64bit-RelWithDebInfo/td && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT td/CMakeFiles/tdclient.dir/td/telegram/Log.cpp.o -MF CMakeFiles/tdclient.dir/td/telegram/Log.cpp.o.d -o CMakeFiles/tdclient.dir/td/telegram/Log.cpp.o -c /Users/mac/IO_QML/td/td/telegram/Log.cpp

td/CMakeFiles/tdclient.dir/td/telegram/Log.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/tdclient.dir/td/telegram/Log.cpp.i"
	cd /Users/mac/IO_QML/build/Desktop_arm_darwin_generic_mach_o_64bit-RelWithDebInfo/td && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/mac/IO_QML/td/td/telegram/Log.cpp > CMakeFiles/tdclient.dir/td/telegram/Log.cpp.i

td/CMakeFiles/tdclient.dir/td/telegram/Log.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/tdclient.dir/td/telegram/Log.cpp.s"
	cd /Users/mac/IO_QML/build/Desktop_arm_darwin_generic_mach_o_64bit-RelWithDebInfo/td && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/mac/IO_QML/td/td/telegram/Log.cpp -o CMakeFiles/tdclient.dir/td/telegram/Log.cpp.s

# Object files for target tdclient
tdclient_OBJECTS = \
"CMakeFiles/tdclient.dir/td/telegram/Client.cpp.o" \
"CMakeFiles/tdclient.dir/td/telegram/Log.cpp.o"

# External object files for target tdclient
tdclient_EXTERNAL_OBJECTS =

td/libtdclient.a: td/CMakeFiles/tdclient.dir/td/telegram/Client.cpp.o
td/libtdclient.a: td/CMakeFiles/tdclient.dir/td/telegram/Log.cpp.o
td/libtdclient.a: td/CMakeFiles/tdclient.dir/build.make
td/libtdclient.a: td/CMakeFiles/tdclient.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/Users/mac/IO_QML/build/Desktop_arm_darwin_generic_mach_o_64bit-RelWithDebInfo/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX static library libtdclient.a"
	cd /Users/mac/IO_QML/build/Desktop_arm_darwin_generic_mach_o_64bit-RelWithDebInfo/td && $(CMAKE_COMMAND) -P CMakeFiles/tdclient.dir/cmake_clean_target.cmake
	cd /Users/mac/IO_QML/build/Desktop_arm_darwin_generic_mach_o_64bit-RelWithDebInfo/td && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/tdclient.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
td/CMakeFiles/tdclient.dir/build: td/libtdclient.a
.PHONY : td/CMakeFiles/tdclient.dir/build

td/CMakeFiles/tdclient.dir/clean:
	cd /Users/mac/IO_QML/build/Desktop_arm_darwin_generic_mach_o_64bit-RelWithDebInfo/td && $(CMAKE_COMMAND) -P CMakeFiles/tdclient.dir/cmake_clean.cmake
.PHONY : td/CMakeFiles/tdclient.dir/clean

td/CMakeFiles/tdclient.dir/depend:
	cd /Users/mac/IO_QML/build/Desktop_arm_darwin_generic_mach_o_64bit-RelWithDebInfo && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/mac/IO_QML /Users/mac/IO_QML/td /Users/mac/IO_QML/build/Desktop_arm_darwin_generic_mach_o_64bit-RelWithDebInfo /Users/mac/IO_QML/build/Desktop_arm_darwin_generic_mach_o_64bit-RelWithDebInfo/td /Users/mac/IO_QML/build/Desktop_arm_darwin_generic_mach_o_64bit-RelWithDebInfo/td/CMakeFiles/tdclient.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : td/CMakeFiles/tdclient.dir/depend

