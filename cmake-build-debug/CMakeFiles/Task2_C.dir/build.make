# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.16

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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\JetBrains\CLion 2020.1.1\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\JetBrains\CLion 2020.1.1\bin\cmake\win\bin\cmake.exe" -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "C:\Users\Krisna Dhipa\Documents\GitHub\Task2_C"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "C:\Users\Krisna Dhipa\Documents\GitHub\Task2_C\cmake-build-debug"

# Include any dependencies generated for this target.
include CMakeFiles/Task2_C.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Task2_C.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Task2_C.dir/flags.make

CMakeFiles/Task2_C.dir/main.c.obj: CMakeFiles/Task2_C.dir/flags.make
CMakeFiles/Task2_C.dir/main.c.obj: ../main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="C:\Users\Krisna Dhipa\Documents\GitHub\Task2_C\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/Task2_C.dir/main.c.obj"
	C:\PROGRA~2\MINGW-~1\I686-8~1.0-P\mingw32\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\Task2_C.dir\main.c.obj   -c "C:\Users\Krisna Dhipa\Documents\GitHub\Task2_C\main.c"

CMakeFiles/Task2_C.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Task2_C.dir/main.c.i"
	C:\PROGRA~2\MINGW-~1\I686-8~1.0-P\mingw32\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "C:\Users\Krisna Dhipa\Documents\GitHub\Task2_C\main.c" > CMakeFiles\Task2_C.dir\main.c.i

CMakeFiles/Task2_C.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Task2_C.dir/main.c.s"
	C:\PROGRA~2\MINGW-~1\I686-8~1.0-P\mingw32\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "C:\Users\Krisna Dhipa\Documents\GitHub\Task2_C\main.c" -o CMakeFiles\Task2_C.dir\main.c.s

# Object files for target Task2_C
Task2_C_OBJECTS = \
"CMakeFiles/Task2_C.dir/main.c.obj"

# External object files for target Task2_C
Task2_C_EXTERNAL_OBJECTS =

Task2_C.exe: CMakeFiles/Task2_C.dir/main.c.obj
Task2_C.exe: CMakeFiles/Task2_C.dir/build.make
Task2_C.exe: CMakeFiles/Task2_C.dir/linklibs.rsp
Task2_C.exe: CMakeFiles/Task2_C.dir/objects1.rsp
Task2_C.exe: CMakeFiles/Task2_C.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="C:\Users\Krisna Dhipa\Documents\GitHub\Task2_C\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable Task2_C.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\Task2_C.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Task2_C.dir/build: Task2_C.exe

.PHONY : CMakeFiles/Task2_C.dir/build

CMakeFiles/Task2_C.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\Task2_C.dir\cmake_clean.cmake
.PHONY : CMakeFiles/Task2_C.dir/clean

CMakeFiles/Task2_C.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" "C:\Users\Krisna Dhipa\Documents\GitHub\Task2_C" "C:\Users\Krisna Dhipa\Documents\GitHub\Task2_C" "C:\Users\Krisna Dhipa\Documents\GitHub\Task2_C\cmake-build-debug" "C:\Users\Krisna Dhipa\Documents\GitHub\Task2_C\cmake-build-debug" "C:\Users\Krisna Dhipa\Documents\GitHub\Task2_C\cmake-build-debug\CMakeFiles\Task2_C.dir\DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/Task2_C.dir/depend

