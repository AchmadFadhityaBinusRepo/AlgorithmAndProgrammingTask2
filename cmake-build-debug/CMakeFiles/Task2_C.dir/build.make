# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

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
CMAKE_COMMAND = /opt/clion-2020.1.2/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /opt/clion-2020.1.2/bin/cmake/linux/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/fadhitya/College/Apps/AlgorithmAndProgrammingTask2

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/fadhitya/College/Apps/AlgorithmAndProgrammingTask2/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/Task2_C.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Task2_C.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Task2_C.dir/flags.make

CMakeFiles/Task2_C.dir/main.c.o: CMakeFiles/Task2_C.dir/flags.make
CMakeFiles/Task2_C.dir/main.c.o: ../main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/fadhitya/College/Apps/AlgorithmAndProgrammingTask2/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/Task2_C.dir/main.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/Task2_C.dir/main.c.o   -c /home/fadhitya/College/Apps/AlgorithmAndProgrammingTask2/main.c

CMakeFiles/Task2_C.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Task2_C.dir/main.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/fadhitya/College/Apps/AlgorithmAndProgrammingTask2/main.c > CMakeFiles/Task2_C.dir/main.c.i

CMakeFiles/Task2_C.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Task2_C.dir/main.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/fadhitya/College/Apps/AlgorithmAndProgrammingTask2/main.c -o CMakeFiles/Task2_C.dir/main.c.s

# Object files for target Task2_C
Task2_C_OBJECTS = \
"CMakeFiles/Task2_C.dir/main.c.o"

# External object files for target Task2_C
Task2_C_EXTERNAL_OBJECTS =

Task2_C: CMakeFiles/Task2_C.dir/main.c.o
Task2_C: CMakeFiles/Task2_C.dir/build.make
Task2_C: CMakeFiles/Task2_C.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/fadhitya/College/Apps/AlgorithmAndProgrammingTask2/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable Task2_C"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Task2_C.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Task2_C.dir/build: Task2_C

.PHONY : CMakeFiles/Task2_C.dir/build

CMakeFiles/Task2_C.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Task2_C.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Task2_C.dir/clean

CMakeFiles/Task2_C.dir/depend:
	cd /home/fadhitya/College/Apps/AlgorithmAndProgrammingTask2/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/fadhitya/College/Apps/AlgorithmAndProgrammingTask2 /home/fadhitya/College/Apps/AlgorithmAndProgrammingTask2 /home/fadhitya/College/Apps/AlgorithmAndProgrammingTask2/cmake-build-debug /home/fadhitya/College/Apps/AlgorithmAndProgrammingTask2/cmake-build-debug /home/fadhitya/College/Apps/AlgorithmAndProgrammingTask2/cmake-build-debug/CMakeFiles/Task2_C.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Task2_C.dir/depend

