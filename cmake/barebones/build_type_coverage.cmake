set(CMAKE_CXX_FLAGS_COVERAGE "${CMAKE_CXX_FLAGS_DEBUG} --coverage" CACHE STRING
    "Flags used by the C++ compiler during maintainer builds."
    FORCE)
set(CMAKE_C_FLAGS_COVERAGE "${CMAKE_C_FLAGS_LINT} --coverage" CACHE STRING
    "Flags used by the C compiler during maintainer builds."
    FORCE)
set(CMAKE_EXE_LINKER_FLAGS_COVERAGE
    "${CMAKE_EXE_LINKER_FLAGS_LINT} --coverage" CACHE STRING
    "Flags used for linking binaries during maintainer builds."
    FORCE)
set(CMAKE_SHARED_LINKER_FLAGS_COVERAGE
    "${CMAKE_SHARED_LINKER_FLAGS_LINT} --coverage" CACHE STRING
    "Flags used by the shared libraries linker during maintainer builds."
    FORCE)
mark_as_advanced(
    CMAKE_CXX_FLAGS_COVERAGE
    CMAKE_C_FLAGS_COVERAGE
    CMAKE_EXE_LINKER_FLAGS_COVERAGE
    CMAKE_SHARED_LINKER_FLAGS_COVERAGE
)

if (${CMAKE_BUILD_TYPE} STREQUAL Coverage)
    set(CMAKE_BUILD_TYPE Debug)
    include(cmake-modules/CodeCoverage)
    set(CMAKE_BUILD_TYPE Coverage)
    enable_testing()
    find_package(cmocka)
endif()

# bb_test_c_compile_options(opt1[ opt2[ ...]])
function(bb_test_c_compile_options)
    foreach(_OPT IN LISTS ARGV)
        list(APPEND BB_TEST_C_COMPILE_OPTIONS ${_OPT})
    endforeach()

    set(BB_TEST_C_COMPILE_OPTIONS ${BB_TEST_C_COMPILE_OPTIONS} PARENT_SCOPE)
endfunction()

function(bb_test_cxx_compile_options _OPTS)
    foreach(_OPT IN LISTS ARGV)
        list(APPEND BB_TEST_CXX_COMPILE_OPTIONS ${_OPT})
    endforeach()

    set(BB_TEST_CXX_COMPILE_OPTIONS ${BB_TEST_CXX_COMPILE_OPTIONS} PARENT_SCOPE)
endfunction()

function(bb_test_include_directories _DIRS)
    foreach(_DIR IN LISTS ARGV)
        list(APPEND BB_TEST_INCLUDE_DIRECTORIES ${_DIR})
    endforeach()

    set(BB_TEST_INCLUDE_DIRECTORIES ${BB_TEST_INCLUDE_DIRECTORIES} PARENT_SCOPE)
endfunction()

function(bb_test_link_libraries _LIBS)
    foreach(_LIBS IN LISTS ARGV)
        list(APPEND BB_TEST_LINK_LIBRARIES ${_LIBS})
    endforeach()

    set(BB_TEST_LINK_LIBRARIES ${BB_TEST_LINK_LIBRARIES} PARENT_SCOPE)
endfunction()
