# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.28

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/farhad/Desktop/C++/GameEngine

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/farhad/Desktop/C++/GameEngine/build

# Include any dependencies generated for this target.
include src/CMakeFiles/geometry.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include src/CMakeFiles/geometry.dir/compiler_depend.make

# Include the progress variables for this target.
include src/CMakeFiles/geometry.dir/progress.make

# Include the compile flags for this target's objects.
include src/CMakeFiles/geometry.dir/flags.make

src/CMakeFiles/geometry.dir/Game.cpp.o: src/CMakeFiles/geometry.dir/flags.make
src/CMakeFiles/geometry.dir/Game.cpp.o: /home/farhad/Desktop/C++/GameEngine/src/Game.cpp
src/CMakeFiles/geometry.dir/Game.cpp.o: src/CMakeFiles/geometry.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/farhad/Desktop/C++/GameEngine/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/CMakeFiles/geometry.dir/Game.cpp.o"
	cd /home/farhad/Desktop/C++/GameEngine/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/CMakeFiles/geometry.dir/Game.cpp.o -MF CMakeFiles/geometry.dir/Game.cpp.o.d -o CMakeFiles/geometry.dir/Game.cpp.o -c /home/farhad/Desktop/C++/GameEngine/src/Game.cpp

src/CMakeFiles/geometry.dir/Game.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/geometry.dir/Game.cpp.i"
	cd /home/farhad/Desktop/C++/GameEngine/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/farhad/Desktop/C++/GameEngine/src/Game.cpp > CMakeFiles/geometry.dir/Game.cpp.i

src/CMakeFiles/geometry.dir/Game.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/geometry.dir/Game.cpp.s"
	cd /home/farhad/Desktop/C++/GameEngine/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/farhad/Desktop/C++/GameEngine/src/Game.cpp -o CMakeFiles/geometry.dir/Game.cpp.s

# Object files for target geometry
geometry_OBJECTS = \
"CMakeFiles/geometry.dir/Game.cpp.o"

# External object files for target geometry
geometry_EXTERNAL_OBJECTS =

src/libgeometry.a: src/CMakeFiles/geometry.dir/Game.cpp.o
src/libgeometry.a: src/CMakeFiles/geometry.dir/build.make
src/libgeometry.a: src/CMakeFiles/geometry.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/farhad/Desktop/C++/GameEngine/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libgeometry.a"
	cd /home/farhad/Desktop/C++/GameEngine/build/src && $(CMAKE_COMMAND) -P CMakeFiles/geometry.dir/cmake_clean_target.cmake
	cd /home/farhad/Desktop/C++/GameEngine/build/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/geometry.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/CMakeFiles/geometry.dir/build: src/libgeometry.a
.PHONY : src/CMakeFiles/geometry.dir/build

src/CMakeFiles/geometry.dir/clean:
	cd /home/farhad/Desktop/C++/GameEngine/build/src && $(CMAKE_COMMAND) -P CMakeFiles/geometry.dir/cmake_clean.cmake
.PHONY : src/CMakeFiles/geometry.dir/clean

src/CMakeFiles/geometry.dir/depend:
	cd /home/farhad/Desktop/C++/GameEngine/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/farhad/Desktop/C++/GameEngine /home/farhad/Desktop/C++/GameEngine/src /home/farhad/Desktop/C++/GameEngine/build /home/farhad/Desktop/C++/GameEngine/build/src /home/farhad/Desktop/C++/GameEngine/build/src/CMakeFiles/geometry.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : src/CMakeFiles/geometry.dir/depend
