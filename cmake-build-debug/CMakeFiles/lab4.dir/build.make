# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.13

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/vmiachko/univ/numeric/lab4

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/vmiachko/univ/numeric/lab4/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/lab4.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/lab4.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/lab4.dir/flags.make

CMakeFiles/lab4.dir/lab4.cpp.o: CMakeFiles/lab4.dir/flags.make
CMakeFiles/lab4.dir/lab4.cpp.o: ../lab4.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/vmiachko/univ/numeric/lab4/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/lab4.dir/lab4.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/lab4.dir/lab4.cpp.o -c /Users/vmiachko/univ/numeric/lab4/lab4.cpp

CMakeFiles/lab4.dir/lab4.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/lab4.dir/lab4.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/vmiachko/univ/numeric/lab4/lab4.cpp > CMakeFiles/lab4.dir/lab4.cpp.i

CMakeFiles/lab4.dir/lab4.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/lab4.dir/lab4.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/vmiachko/univ/numeric/lab4/lab4.cpp -o CMakeFiles/lab4.dir/lab4.cpp.s

CMakeFiles/lab4.dir/Matrix.cpp.o: CMakeFiles/lab4.dir/flags.make
CMakeFiles/lab4.dir/Matrix.cpp.o: ../Matrix.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/vmiachko/univ/numeric/lab4/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/lab4.dir/Matrix.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/lab4.dir/Matrix.cpp.o -c /Users/vmiachko/univ/numeric/lab4/Matrix.cpp

CMakeFiles/lab4.dir/Matrix.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/lab4.dir/Matrix.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/vmiachko/univ/numeric/lab4/Matrix.cpp > CMakeFiles/lab4.dir/Matrix.cpp.i

CMakeFiles/lab4.dir/Matrix.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/lab4.dir/Matrix.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/vmiachko/univ/numeric/lab4/Matrix.cpp -o CMakeFiles/lab4.dir/Matrix.cpp.s

# Object files for target lab4
lab4_OBJECTS = \
"CMakeFiles/lab4.dir/lab4.cpp.o" \
"CMakeFiles/lab4.dir/Matrix.cpp.o"

# External object files for target lab4
lab4_EXTERNAL_OBJECTS =

lab4: CMakeFiles/lab4.dir/lab4.cpp.o
lab4: CMakeFiles/lab4.dir/Matrix.cpp.o
lab4: CMakeFiles/lab4.dir/build.make
lab4: CMakeFiles/lab4.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/vmiachko/univ/numeric/lab4/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable lab4"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/lab4.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/lab4.dir/build: lab4

.PHONY : CMakeFiles/lab4.dir/build

CMakeFiles/lab4.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/lab4.dir/cmake_clean.cmake
.PHONY : CMakeFiles/lab4.dir/clean

CMakeFiles/lab4.dir/depend:
	cd /Users/vmiachko/univ/numeric/lab4/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/vmiachko/univ/numeric/lab4 /Users/vmiachko/univ/numeric/lab4 /Users/vmiachko/univ/numeric/lab4/cmake-build-debug /Users/vmiachko/univ/numeric/lab4/cmake-build-debug /Users/vmiachko/univ/numeric/lab4/cmake-build-debug/CMakeFiles/lab4.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/lab4.dir/depend
