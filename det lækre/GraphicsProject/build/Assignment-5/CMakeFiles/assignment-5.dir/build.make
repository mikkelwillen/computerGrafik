# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

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
CMAKE_COMMAND = /snap/cmake/992/bin/cmake

# The command to remove a file.
RM = /snap/cmake/992/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/marie/Dropbox/Uni/6.semester/grafik/ComputerGrafikProjektStudents/GraphicsProject

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/marie/Dropbox/Uni/6.semester/grafik/ComputerGrafikProjektStudents/GraphicsProject/build

# Include any dependencies generated for this target.
include Assignment-5/CMakeFiles/assignment-5.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include Assignment-5/CMakeFiles/assignment-5.dir/compiler_depend.make

# Include the progress variables for this target.
include Assignment-5/CMakeFiles/assignment-5.dir/progress.make

# Include the compile flags for this target's objects.
include Assignment-5/CMakeFiles/assignment-5.dir/flags.make

Assignment-5/CMakeFiles/assignment-5.dir/src/assignment-5.cpp.o: Assignment-5/CMakeFiles/assignment-5.dir/flags.make
Assignment-5/CMakeFiles/assignment-5.dir/src/assignment-5.cpp.o: ../Assignment-5/src/assignment-5.cpp
Assignment-5/CMakeFiles/assignment-5.dir/src/assignment-5.cpp.o: Assignment-5/CMakeFiles/assignment-5.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/marie/Dropbox/Uni/6.semester/grafik/ComputerGrafikProjektStudents/GraphicsProject/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object Assignment-5/CMakeFiles/assignment-5.dir/src/assignment-5.cpp.o"
	cd /home/marie/Dropbox/Uni/6.semester/grafik/ComputerGrafikProjektStudents/GraphicsProject/build/Assignment-5 && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT Assignment-5/CMakeFiles/assignment-5.dir/src/assignment-5.cpp.o -MF CMakeFiles/assignment-5.dir/src/assignment-5.cpp.o.d -o CMakeFiles/assignment-5.dir/src/assignment-5.cpp.o -c /home/marie/Dropbox/Uni/6.semester/grafik/ComputerGrafikProjektStudents/GraphicsProject/Assignment-5/src/assignment-5.cpp

Assignment-5/CMakeFiles/assignment-5.dir/src/assignment-5.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/assignment-5.dir/src/assignment-5.cpp.i"
	cd /home/marie/Dropbox/Uni/6.semester/grafik/ComputerGrafikProjektStudents/GraphicsProject/build/Assignment-5 && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/marie/Dropbox/Uni/6.semester/grafik/ComputerGrafikProjektStudents/GraphicsProject/Assignment-5/src/assignment-5.cpp > CMakeFiles/assignment-5.dir/src/assignment-5.cpp.i

Assignment-5/CMakeFiles/assignment-5.dir/src/assignment-5.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/assignment-5.dir/src/assignment-5.cpp.s"
	cd /home/marie/Dropbox/Uni/6.semester/grafik/ComputerGrafikProjektStudents/GraphicsProject/build/Assignment-5 && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/marie/Dropbox/Uni/6.semester/grafik/ComputerGrafikProjektStudents/GraphicsProject/Assignment-5/src/assignment-5.cpp -o CMakeFiles/assignment-5.dir/src/assignment-5.cpp.s

# Object files for target assignment-5
assignment__5_OBJECTS = \
"CMakeFiles/assignment-5.dir/src/assignment-5.cpp.o"

# External object files for target assignment-5
assignment__5_EXTERNAL_OBJECTS =

../bin/assignment-5: Assignment-5/CMakeFiles/assignment-5.dir/src/assignment-5.cpp.o
../bin/assignment-5: Assignment-5/CMakeFiles/assignment-5.dir/build.make
../bin/assignment-5: ../lib/libDIKUgraphics.a
../bin/assignment-5: /usr/lib/x86_64-linux-gnu/libOpenGL.so
../bin/assignment-5: /usr/lib/x86_64-linux-gnu/libGLX.so
../bin/assignment-5: /usr/lib/x86_64-linux-gnu/libGLU.so
../bin/assignment-5: /usr/lib/x86_64-linux-gnu/libGLEW.so
../bin/assignment-5: /usr/lib/x86_64-linux-gnu/libglfw.so.3.3
../bin/assignment-5: Assignment-5/CMakeFiles/assignment-5.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/marie/Dropbox/Uni/6.semester/grafik/ComputerGrafikProjektStudents/GraphicsProject/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../bin/assignment-5"
	cd /home/marie/Dropbox/Uni/6.semester/grafik/ComputerGrafikProjektStudents/GraphicsProject/build/Assignment-5 && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/assignment-5.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
Assignment-5/CMakeFiles/assignment-5.dir/build: ../bin/assignment-5
.PHONY : Assignment-5/CMakeFiles/assignment-5.dir/build

Assignment-5/CMakeFiles/assignment-5.dir/clean:
	cd /home/marie/Dropbox/Uni/6.semester/grafik/ComputerGrafikProjektStudents/GraphicsProject/build/Assignment-5 && $(CMAKE_COMMAND) -P CMakeFiles/assignment-5.dir/cmake_clean.cmake
.PHONY : Assignment-5/CMakeFiles/assignment-5.dir/clean

Assignment-5/CMakeFiles/assignment-5.dir/depend:
	cd /home/marie/Dropbox/Uni/6.semester/grafik/ComputerGrafikProjektStudents/GraphicsProject/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/marie/Dropbox/Uni/6.semester/grafik/ComputerGrafikProjektStudents/GraphicsProject /home/marie/Dropbox/Uni/6.semester/grafik/ComputerGrafikProjektStudents/GraphicsProject/Assignment-5 /home/marie/Dropbox/Uni/6.semester/grafik/ComputerGrafikProjektStudents/GraphicsProject/build /home/marie/Dropbox/Uni/6.semester/grafik/ComputerGrafikProjektStudents/GraphicsProject/build/Assignment-5 /home/marie/Dropbox/Uni/6.semester/grafik/ComputerGrafikProjektStudents/GraphicsProject/build/Assignment-5/CMakeFiles/assignment-5.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : Assignment-5/CMakeFiles/assignment-5.dir/depend

