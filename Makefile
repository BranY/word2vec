# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.12

# Default target executed when no arguments are given to make.
default_target: all

.PHONY : default_target

# Allow only one "make -f Makefile2" at a time, but pass parallelism.
.NOTPARALLEL:


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
CMAKE_SOURCE_DIR = /Users/yangwenjia/workspace/source/word2vec

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/yangwenjia/workspace/source/word2vec

#=============================================================================
# Targets provided globally by CMake.

# Special rule for the target rebuild_cache
rebuild_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake to regenerate build system..."
	/Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : rebuild_cache

# Special rule for the target rebuild_cache
rebuild_cache/fast: rebuild_cache

.PHONY : rebuild_cache/fast

# Special rule for the target edit_cache
edit_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "No interactive CMake dialog available..."
	/Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E echo No\ interactive\ CMake\ dialog\ available.
.PHONY : edit_cache

# Special rule for the target edit_cache
edit_cache/fast: edit_cache

.PHONY : edit_cache/fast

# The main all target
all: cmake_check_build_system
	$(CMAKE_COMMAND) -E cmake_progress_start /Users/yangwenjia/workspace/source/word2vec/CMakeFiles /Users/yangwenjia/workspace/source/word2vec/CMakeFiles/progress.marks
	$(MAKE) -f CMakeFiles/Makefile2 all
	$(CMAKE_COMMAND) -E cmake_progress_start /Users/yangwenjia/workspace/source/word2vec/CMakeFiles 0
.PHONY : all

# The main clean target
clean:
	$(MAKE) -f CMakeFiles/Makefile2 clean
.PHONY : clean

# The main clean target
clean/fast: clean

.PHONY : clean/fast

# Prepare targets for installation.
preinstall: all
	$(MAKE) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall

# Prepare targets for installation.
preinstall/fast:
	$(MAKE) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall/fast

# clear depends
depend:
	$(CMAKE_COMMAND) -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 1
.PHONY : depend

#=============================================================================
# Target rules for targets named Demo

# Build rule for target.
Demo: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 Demo
.PHONY : Demo

# fast build rule for target.
Demo/fast:
	$(MAKE) -f CMakeFiles/Demo.dir/build.make CMakeFiles/Demo.dir/build
.PHONY : Demo/fast

# target to build an object file
src/compute-accuracy.o:
	$(MAKE) -f CMakeFiles/Demo.dir/build.make CMakeFiles/Demo.dir/src/compute-accuracy.o
.PHONY : src/compute-accuracy.o

# target to preprocess a source file
src/compute-accuracy.i:
	$(MAKE) -f CMakeFiles/Demo.dir/build.make CMakeFiles/Demo.dir/src/compute-accuracy.i
.PHONY : src/compute-accuracy.i

# target to generate assembly for a file
src/compute-accuracy.s:
	$(MAKE) -f CMakeFiles/Demo.dir/build.make CMakeFiles/Demo.dir/src/compute-accuracy.s
.PHONY : src/compute-accuracy.s

# target to build an object file
src/distance.o:
	$(MAKE) -f CMakeFiles/Demo.dir/build.make CMakeFiles/Demo.dir/src/distance.o
.PHONY : src/distance.o

# target to preprocess a source file
src/distance.i:
	$(MAKE) -f CMakeFiles/Demo.dir/build.make CMakeFiles/Demo.dir/src/distance.i
.PHONY : src/distance.i

# target to generate assembly for a file
src/distance.s:
	$(MAKE) -f CMakeFiles/Demo.dir/build.make CMakeFiles/Demo.dir/src/distance.s
.PHONY : src/distance.s

# target to build an object file
src/word-analogy.o:
	$(MAKE) -f CMakeFiles/Demo.dir/build.make CMakeFiles/Demo.dir/src/word-analogy.o
.PHONY : src/word-analogy.o

# target to preprocess a source file
src/word-analogy.i:
	$(MAKE) -f CMakeFiles/Demo.dir/build.make CMakeFiles/Demo.dir/src/word-analogy.i
.PHONY : src/word-analogy.i

# target to generate assembly for a file
src/word-analogy.s:
	$(MAKE) -f CMakeFiles/Demo.dir/build.make CMakeFiles/Demo.dir/src/word-analogy.s
.PHONY : src/word-analogy.s

# target to build an object file
src/word2phrase.o:
	$(MAKE) -f CMakeFiles/Demo.dir/build.make CMakeFiles/Demo.dir/src/word2phrase.o
.PHONY : src/word2phrase.o

# target to preprocess a source file
src/word2phrase.i:
	$(MAKE) -f CMakeFiles/Demo.dir/build.make CMakeFiles/Demo.dir/src/word2phrase.i
.PHONY : src/word2phrase.i

# target to generate assembly for a file
src/word2phrase.s:
	$(MAKE) -f CMakeFiles/Demo.dir/build.make CMakeFiles/Demo.dir/src/word2phrase.s
.PHONY : src/word2phrase.s

# target to build an object file
src/word2vec.o:
	$(MAKE) -f CMakeFiles/Demo.dir/build.make CMakeFiles/Demo.dir/src/word2vec.o
.PHONY : src/word2vec.o

# target to preprocess a source file
src/word2vec.i:
	$(MAKE) -f CMakeFiles/Demo.dir/build.make CMakeFiles/Demo.dir/src/word2vec.i
.PHONY : src/word2vec.i

# target to generate assembly for a file
src/word2vec.s:
	$(MAKE) -f CMakeFiles/Demo.dir/build.make CMakeFiles/Demo.dir/src/word2vec.s
.PHONY : src/word2vec.s

# Help Target
help:
	@echo "The following are some of the valid targets for this Makefile:"
	@echo "... all (the default if no target is provided)"
	@echo "... clean"
	@echo "... depend"
	@echo "... rebuild_cache"
	@echo "... edit_cache"
	@echo "... Demo"
	@echo "... src/compute-accuracy.o"
	@echo "... src/compute-accuracy.i"
	@echo "... src/compute-accuracy.s"
	@echo "... src/distance.o"
	@echo "... src/distance.i"
	@echo "... src/distance.s"
	@echo "... src/word-analogy.o"
	@echo "... src/word-analogy.i"
	@echo "... src/word-analogy.s"
	@echo "... src/word2phrase.o"
	@echo "... src/word2phrase.i"
	@echo "... src/word2phrase.s"
	@echo "... src/word2vec.o"
	@echo "... src/word2vec.i"
	@echo "... src/word2vec.s"
.PHONY : help



#=============================================================================
# Special targets to cleanup operation of make.

# Special rule to run CMake to check the build system integrity.
# No rule that depends on this can have commands that come from listfiles
# because they might be regenerated.
cmake_check_build_system:
	$(CMAKE_COMMAND) -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 0
.PHONY : cmake_check_build_system

