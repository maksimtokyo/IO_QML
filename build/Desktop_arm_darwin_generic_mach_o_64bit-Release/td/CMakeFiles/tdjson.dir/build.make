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
CMAKE_BINARY_DIR = /Users/mac/IO_QML/build/Desktop_arm_darwin_generic_mach_o_64bit-Release

# Include any dependencies generated for this target.
include td/CMakeFiles/tdjson.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include td/CMakeFiles/tdjson.dir/compiler_depend.make

# Include the progress variables for this target.
include td/CMakeFiles/tdjson.dir/progress.make

# Include the compile flags for this target's objects.
include td/CMakeFiles/tdjson.dir/flags.make

td/CMakeFiles/tdjson.dir/td/telegram/td_json_client.cpp.o: td/CMakeFiles/tdjson.dir/flags.make
td/CMakeFiles/tdjson.dir/td/telegram/td_json_client.cpp.o: /Users/mac/IO_QML/td/td/telegram/td_json_client.cpp
td/CMakeFiles/tdjson.dir/td/telegram/td_json_client.cpp.o: td/CMakeFiles/tdjson.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/mac/IO_QML/build/Desktop_arm_darwin_generic_mach_o_64bit-Release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object td/CMakeFiles/tdjson.dir/td/telegram/td_json_client.cpp.o"
	cd /Users/mac/IO_QML/build/Desktop_arm_darwin_generic_mach_o_64bit-Release/td && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT td/CMakeFiles/tdjson.dir/td/telegram/td_json_client.cpp.o -MF CMakeFiles/tdjson.dir/td/telegram/td_json_client.cpp.o.d -o CMakeFiles/tdjson.dir/td/telegram/td_json_client.cpp.o -c /Users/mac/IO_QML/td/td/telegram/td_json_client.cpp

td/CMakeFiles/tdjson.dir/td/telegram/td_json_client.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/tdjson.dir/td/telegram/td_json_client.cpp.i"
	cd /Users/mac/IO_QML/build/Desktop_arm_darwin_generic_mach_o_64bit-Release/td && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/mac/IO_QML/td/td/telegram/td_json_client.cpp > CMakeFiles/tdjson.dir/td/telegram/td_json_client.cpp.i

td/CMakeFiles/tdjson.dir/td/telegram/td_json_client.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/tdjson.dir/td/telegram/td_json_client.cpp.s"
	cd /Users/mac/IO_QML/build/Desktop_arm_darwin_generic_mach_o_64bit-Release/td && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/mac/IO_QML/td/td/telegram/td_json_client.cpp -o CMakeFiles/tdjson.dir/td/telegram/td_json_client.cpp.s

td/CMakeFiles/tdjson.dir/td/telegram/td_log.cpp.o: td/CMakeFiles/tdjson.dir/flags.make
td/CMakeFiles/tdjson.dir/td/telegram/td_log.cpp.o: /Users/mac/IO_QML/td/td/telegram/td_log.cpp
td/CMakeFiles/tdjson.dir/td/telegram/td_log.cpp.o: td/CMakeFiles/tdjson.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/mac/IO_QML/build/Desktop_arm_darwin_generic_mach_o_64bit-Release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object td/CMakeFiles/tdjson.dir/td/telegram/td_log.cpp.o"
	cd /Users/mac/IO_QML/build/Desktop_arm_darwin_generic_mach_o_64bit-Release/td && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT td/CMakeFiles/tdjson.dir/td/telegram/td_log.cpp.o -MF CMakeFiles/tdjson.dir/td/telegram/td_log.cpp.o.d -o CMakeFiles/tdjson.dir/td/telegram/td_log.cpp.o -c /Users/mac/IO_QML/td/td/telegram/td_log.cpp

td/CMakeFiles/tdjson.dir/td/telegram/td_log.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/tdjson.dir/td/telegram/td_log.cpp.i"
	cd /Users/mac/IO_QML/build/Desktop_arm_darwin_generic_mach_o_64bit-Release/td && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/mac/IO_QML/td/td/telegram/td_log.cpp > CMakeFiles/tdjson.dir/td/telegram/td_log.cpp.i

td/CMakeFiles/tdjson.dir/td/telegram/td_log.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/tdjson.dir/td/telegram/td_log.cpp.s"
	cd /Users/mac/IO_QML/build/Desktop_arm_darwin_generic_mach_o_64bit-Release/td && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/mac/IO_QML/td/td/telegram/td_log.cpp -o CMakeFiles/tdjson.dir/td/telegram/td_log.cpp.s

# Object files for target tdjson
tdjson_OBJECTS = \
"CMakeFiles/tdjson.dir/td/telegram/td_json_client.cpp.o" \
"CMakeFiles/tdjson.dir/td/telegram/td_log.cpp.o"

# External object files for target tdjson
tdjson_EXTERNAL_OBJECTS =

td/libtdjson.1.8.42.dylib: td/CMakeFiles/tdjson.dir/td/telegram/td_json_client.cpp.o
td/libtdjson.1.8.42.dylib: td/CMakeFiles/tdjson.dir/td/telegram/td_log.cpp.o
td/libtdjson.1.8.42.dylib: td/CMakeFiles/tdjson.dir/build.make
td/libtdjson.1.8.42.dylib: td/libtdjson_private.a
td/libtdjson.1.8.42.dylib: td/libtdclient.a
td/libtdjson.1.8.42.dylib: td/libtdcore.a
td/libtdjson.1.8.42.dylib: td/libtdapi.a
td/libtdjson.1.8.42.dylib: td/tddb/libtddb.a
td/libtdjson.1.8.42.dylib: td/sqlite/libtdsqlite.a
td/libtdjson.1.8.42.dylib: td/libtdmtproto.a
td/libtdjson.1.8.42.dylib: td/tdnet/libtdnet.a
td/libtdjson.1.8.42.dylib: /opt/homebrew/lib/libssl.dylib
td/libtdjson.1.8.42.dylib: td/tdactor/libtdactor.a
td/libtdjson.1.8.42.dylib: td/tdutils/libtdutils.a
td/libtdjson.1.8.42.dylib: /opt/homebrew/lib/libcrypto.dylib
td/libtdjson.1.8.42.dylib: /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX15.0.sdk/usr/lib/libz.tbd
td/libtdjson.1.8.42.dylib: td/CMakeFiles/tdjson.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/Users/mac/IO_QML/build/Desktop_arm_darwin_generic_mach_o_64bit-Release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX shared library libtdjson.dylib"
	cd /Users/mac/IO_QML/build/Desktop_arm_darwin_generic_mach_o_64bit-Release/td && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/tdjson.dir/link.txt --verbose=$(VERBOSE)
	cd /Users/mac/IO_QML/build/Desktop_arm_darwin_generic_mach_o_64bit-Release/td && $(CMAKE_COMMAND) -E cmake_symlink_library libtdjson.1.8.42.dylib libtdjson.1.8.42.dylib libtdjson.dylib

td/libtdjson.dylib: td/libtdjson.1.8.42.dylib
	@$(CMAKE_COMMAND) -E touch_nocreate td/libtdjson.dylib

# Rule to build all files generated by this target.
td/CMakeFiles/tdjson.dir/build: td/libtdjson.dylib
.PHONY : td/CMakeFiles/tdjson.dir/build

td/CMakeFiles/tdjson.dir/clean:
	cd /Users/mac/IO_QML/build/Desktop_arm_darwin_generic_mach_o_64bit-Release/td && $(CMAKE_COMMAND) -P CMakeFiles/tdjson.dir/cmake_clean.cmake
.PHONY : td/CMakeFiles/tdjson.dir/clean

td/CMakeFiles/tdjson.dir/depend:
	cd /Users/mac/IO_QML/build/Desktop_arm_darwin_generic_mach_o_64bit-Release && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/mac/IO_QML /Users/mac/IO_QML/td /Users/mac/IO_QML/build/Desktop_arm_darwin_generic_mach_o_64bit-Release /Users/mac/IO_QML/build/Desktop_arm_darwin_generic_mach_o_64bit-Release/td /Users/mac/IO_QML/build/Desktop_arm_darwin_generic_mach_o_64bit-Release/td/CMakeFiles/tdjson.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : td/CMakeFiles/tdjson.dir/depend

