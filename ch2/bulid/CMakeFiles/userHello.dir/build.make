# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/qh/Desktop/slambook/ch2

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/qh/Desktop/slambook/ch2/bulid

# Include any dependencies generated for this target.
include CMakeFiles/userHello.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/userHello.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/userHello.dir/flags.make

CMakeFiles/userHello.dir/userHello.cpp.o: CMakeFiles/userHello.dir/flags.make
CMakeFiles/userHello.dir/userHello.cpp.o: ../userHello.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/qh/Desktop/slambook/ch2/bulid/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/userHello.dir/userHello.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/userHello.dir/userHello.cpp.o -c /home/qh/Desktop/slambook/ch2/userHello.cpp

CMakeFiles/userHello.dir/userHello.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/userHello.dir/userHello.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/qh/Desktop/slambook/ch2/userHello.cpp > CMakeFiles/userHello.dir/userHello.cpp.i

CMakeFiles/userHello.dir/userHello.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/userHello.dir/userHello.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/qh/Desktop/slambook/ch2/userHello.cpp -o CMakeFiles/userHello.dir/userHello.cpp.s

CMakeFiles/userHello.dir/userHello.cpp.o.requires:

.PHONY : CMakeFiles/userHello.dir/userHello.cpp.o.requires

CMakeFiles/userHello.dir/userHello.cpp.o.provides: CMakeFiles/userHello.dir/userHello.cpp.o.requires
	$(MAKE) -f CMakeFiles/userHello.dir/build.make CMakeFiles/userHello.dir/userHello.cpp.o.provides.build
.PHONY : CMakeFiles/userHello.dir/userHello.cpp.o.provides

CMakeFiles/userHello.dir/userHello.cpp.o.provides.build: CMakeFiles/userHello.dir/userHello.cpp.o


# Object files for target userHello
userHello_OBJECTS = \
"CMakeFiles/userHello.dir/userHello.cpp.o"

# External object files for target userHello
userHello_EXTERNAL_OBJECTS =

userHello: CMakeFiles/userHello.dir/userHello.cpp.o
userHello: CMakeFiles/userHello.dir/build.make
userHello: libHello.a
userHello: CMakeFiles/userHello.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/qh/Desktop/slambook/ch2/bulid/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable userHello"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/userHello.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/userHello.dir/build: userHello

.PHONY : CMakeFiles/userHello.dir/build

CMakeFiles/userHello.dir/requires: CMakeFiles/userHello.dir/userHello.cpp.o.requires

.PHONY : CMakeFiles/userHello.dir/requires

CMakeFiles/userHello.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/userHello.dir/cmake_clean.cmake
.PHONY : CMakeFiles/userHello.dir/clean

CMakeFiles/userHello.dir/depend:
	cd /home/qh/Desktop/slambook/ch2/bulid && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/qh/Desktop/slambook/ch2 /home/qh/Desktop/slambook/ch2 /home/qh/Desktop/slambook/ch2/bulid /home/qh/Desktop/slambook/ch2/bulid /home/qh/Desktop/slambook/ch2/bulid/CMakeFiles/userHello.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/userHello.dir/depend

