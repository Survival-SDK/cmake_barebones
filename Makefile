include makefiles/barebones.mk

# Barebones makefile for your project.
# This variables can be set before running this makefile:
#   toolchain

# Set cmake build_dir
# BB_CMAKE_BUILD_DIR=<dir>

# Add opts passed to cmake while building release
# BB_CMAKE_RELEASE_DEV_OPTS+= <opts>

# Set cmake opts for release build
# BB_CMAKE_RELEASE_OPTS=<opts>

# Set cmake opts for debug build
# BB_CMAKE_DEBUG_OPTS=<opts>

# Set clang-tidy c++ standard
# BB_CLANG_TIDY_CXX_STD=<std>

# Set filters for cmakelint
# BB_CMAKELINT_FILTER=<filter>

all: bb_all

clean: bb_clean

lint: bb_cpp_lint

lint_build: bb_lint_build
