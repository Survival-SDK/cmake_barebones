set(BB_CLANG_TIDY_COMMON_CHECKS "\
*,\
-*-braces-around-statements,\
-*-uppercase-literal-suffix,\
-altera-id-dependent-backward-branch,\
-bugprone-easily-swappable-parameters,\
-llvmlibc-restrict-system-libc-headers,\
-misc-no-recursion,\
")

set(BB_CLANG_TIDY_C_CHECKS "${BB_CLANG_TIDY_COMMON_CHECKS}\
-cppcoreguidelines-*,\
")
set(BB_CLANG_TIDY_CXX_CHECKS "${BB_CLANG_TIDY_COMMON_CHECKS}\
")

set(CMAKE_CXX_FLAGS_LINT ${CMAKE_CXX_FLAGS_DEBUG} CACHE STRING
    "Flags used by the C++ compiler during maintainer builds."
    FORCE)
set(CMAKE_C_FLAGS_LINT ${CMAKE_C_FLAGS_LINT} CACHE STRING
    "Flags used by the C compiler during maintainer builds."
    FORCE)
set(CMAKE_EXE_LINKER_FLAGS_LINT
    ${CMAKE_EXE_LINKER_FLAGS_LINT} CACHE STRING
    "Flags used for linking binaries during maintainer builds."
    FORCE)
set(CMAKE_SHARED_LINKER_FLAGS_LINT
    ${CMAKE_SHARED_LINKER_FLAGS_LINT} CACHE STRING
    "Flags used by the shared libraries linker during maintainer builds."
    FORCE)

if (${CMAKE_BUILD_TYPE} STREQUAL Lint)
    find_package(cmocka)
endif()

mark_as_advanced(
    CMAKE_CXX_FLAGS_LINT
    CMAKE_C_FLAGS_LINT
    CMAKE_EXE_LINKER_FLAGS_LINT
    CMAKE_SHARED_LINKER_FLAGS_LINT
)
