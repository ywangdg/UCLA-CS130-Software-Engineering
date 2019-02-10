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
CMAKE_SOURCE_DIR = /usr/src/projects/rubberduck

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /usr/src/projects/rubberduck/build

# Include any dependencies generated for this target.
include CMakeFiles/session_test.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/session_test.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/session_test.dir/flags.make

CMakeFiles/session_test.dir/tests/session_test.cc.o: CMakeFiles/session_test.dir/flags.make
CMakeFiles/session_test.dir/tests/session_test.cc.o: ../tests/session_test.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/usr/src/projects/rubberduck/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/session_test.dir/tests/session_test.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/session_test.dir/tests/session_test.cc.o -c /usr/src/projects/rubberduck/tests/session_test.cc

CMakeFiles/session_test.dir/tests/session_test.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/session_test.dir/tests/session_test.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /usr/src/projects/rubberduck/tests/session_test.cc > CMakeFiles/session_test.dir/tests/session_test.cc.i

CMakeFiles/session_test.dir/tests/session_test.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/session_test.dir/tests/session_test.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /usr/src/projects/rubberduck/tests/session_test.cc -o CMakeFiles/session_test.dir/tests/session_test.cc.s

CMakeFiles/session_test.dir/tests/session_test.cc.o.requires:

.PHONY : CMakeFiles/session_test.dir/tests/session_test.cc.o.requires

CMakeFiles/session_test.dir/tests/session_test.cc.o.provides: CMakeFiles/session_test.dir/tests/session_test.cc.o.requires
	$(MAKE) -f CMakeFiles/session_test.dir/build.make CMakeFiles/session_test.dir/tests/session_test.cc.o.provides.build
.PHONY : CMakeFiles/session_test.dir/tests/session_test.cc.o.provides

CMakeFiles/session_test.dir/tests/session_test.cc.o.provides.build: CMakeFiles/session_test.dir/tests/session_test.cc.o


# Object files for target session_test
session_test_OBJECTS = \
"CMakeFiles/session_test.dir/tests/session_test.cc.o"

# External object files for target session_test
session_test_EXTERNAL_OBJECTS =

bin/session_test: CMakeFiles/session_test.dir/tests/session_test.cc.o
bin/session_test: CMakeFiles/session_test.dir/build.make
bin/session_test: libsession.a
bin/session_test: librequest_handler.a
bin/session_test: librequest_parser.a
bin/session_test: googletest/googlemock/gtest/libgtest_main.a
bin/session_test: googletest/googlemock/libgmock_main.a
bin/session_test: liblogger.a
bin/session_test: /usr/lib/x86_64-linux-gnu/libboost_system.a
bin/session_test: /usr/lib/x86_64-linux-gnu/libboost_filesystem.a
bin/session_test: /usr/lib/x86_64-linux-gnu/libboost_regex.a
bin/session_test: /usr/lib/x86_64-linux-gnu/libboost_log_setup.a
bin/session_test: /usr/lib/x86_64-linux-gnu/libboost_log.a
bin/session_test: googletest/googlemock/gtest/libgtest.a
bin/session_test: /usr/lib/x86_64-linux-gnu/libboost_filesystem.a
bin/session_test: /usr/lib/x86_64-linux-gnu/libboost_regex.a
bin/session_test: /usr/lib/x86_64-linux-gnu/libboost_log_setup.a
bin/session_test: /usr/lib/x86_64-linux-gnu/libboost_thread.a
bin/session_test: /usr/lib/x86_64-linux-gnu/libboost_date_time.a
bin/session_test: /usr/lib/x86_64-linux-gnu/libboost_chrono.a
bin/session_test: /usr/lib/x86_64-linux-gnu/libboost_system.a
bin/session_test: /usr/lib/x86_64-linux-gnu/libboost_atomic.a
bin/session_test: CMakeFiles/session_test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/usr/src/projects/rubberduck/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable bin/session_test"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/session_test.dir/link.txt --verbose=$(VERBOSE)
	/usr/bin/cmake -D TEST_TARGET=session_test -D TEST_EXECUTABLE=/usr/src/projects/rubberduck/build/bin/session_test -D TEST_EXECUTOR= -D TEST_WORKING_DIR=/usr/src/projects/rubberduck/tests -D TEST_EXTRA_ARGS= -D TEST_PROPERTIES= -D TEST_PREFIX= -D TEST_SUFFIX= -D NO_PRETTY_TYPES=FALSE -D NO_PRETTY_VALUES=FALSE -D TEST_LIST=session_test_TESTS -D CTEST_FILE=/usr/src/projects/rubberduck/build/session_test[1]_tests.cmake -D TEST_DISCOVERY_TIMEOUT=5 -P /usr/share/cmake-3.10/Modules/GoogleTestAddTests.cmake

# Rule to build all files generated by this target.
CMakeFiles/session_test.dir/build: bin/session_test

.PHONY : CMakeFiles/session_test.dir/build

CMakeFiles/session_test.dir/requires: CMakeFiles/session_test.dir/tests/session_test.cc.o.requires

.PHONY : CMakeFiles/session_test.dir/requires

CMakeFiles/session_test.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/session_test.dir/cmake_clean.cmake
.PHONY : CMakeFiles/session_test.dir/clean

CMakeFiles/session_test.dir/depend:
	cd /usr/src/projects/rubberduck/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /usr/src/projects/rubberduck /usr/src/projects/rubberduck /usr/src/projects/rubberduck/build /usr/src/projects/rubberduck/build /usr/src/projects/rubberduck/build/CMakeFiles/session_test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/session_test.dir/depend
