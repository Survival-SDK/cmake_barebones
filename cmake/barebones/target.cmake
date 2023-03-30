if (CMAKE_BUILD_TYPE STREQUAL "Release")
    include(CheckIPOSupported)
    check_ipo_supported(RESULT BB_HAVE_LTO)
endif()

# bb_add_library(<target> {STATIC|SHARED|OBJECT} [OBJLIB <objlib>] [src1[ src2[ ...]]])
function(bb_add_library)
    set(options STATIC SHARED OBJECT)
    set(oneValueArgs OBJLIB)

    cmake_parse_arguments(_BB_ADD_LIBRARY "${options}" "${oneValueArgs}" "" ${ARGN})

    list(GET _BB_ADD_LIBRARY_UNPARSED_ARGUMENTS 0 _TARGET)
    if (_BB_ADD_LIBRARY_STATIC)
        set(_TYPE STATIC)
    elseif (_BB_ADD_LIBRARY_SHARED)
        set(_TYPE SHARED)
    else ()
        set(_TYPE OBJECT)
    endif()

    set(_COUNTER 0)
    foreach(_UNPARSED IN LISTS _BB_ADD_LIBRARY_UNPARSED_ARGUMENTS)
        if (NOT ${_COUNTER} EQUAL 0)
            list(APPEND _SOURCES ${_UNPARSED})
        endif()
        math(EXPR _COUNTER "${_COUNTER} + 1")
    endforeach()

    if (_BB_ADD_LIBRARY_OBJLIB)
        add_library(${_TARGET} ${_TYPE} $<TARGET_OBJECTS:${_BB_ADD_LIBRARY_OBJLIB}> ${_SOURCES})
    else()
        add_library(${_TARGET} ${_TYPE} ${_SOURCES})
    endif()

    if(BB_HAVE_LTO AND CMAKE_BUILD_TYPE STREQUAL "Release")
        set_target_properties(${_TARGET} PROPERTIES
            INTERPROCEDURAL_OPTIMIZATION TRUE
        )
    endif()

    if (CMAKE_BUILD_TYPE STREQUAL "Lint")
        set_target_properties(${_TARGET} PROPERTIES C_CLANG_TIDY
            "clang-tidy;--checks=${BB_CLANG_TIDY_C_CHECKS}")
        set_target_properties(${_TARGET} PROPERTIES CXX_CLANG_TIDY
            "clang-tidy;--checks=${BB_CLANG_TIDY_CXX_CHECKS}")
        set_target_properties(${_TARGET} PROPERTIES C_INCLUDE_WHAT_YOU_USE iwyu)
        set_target_properties(${_TARGET} PROPERTIES CXX_INCLUDE_WHAT_YOU_USE iwyu)
    endif()
endfunction()

# bb_add_executable(<target> [src1[ src2[ ...]]])
function(bb_add_executable)
    list(GET ARGV 0 _TARGET)

    set(_COUNTER 0)
    foreach(_ARG IN LISTS ARGV)
        if (NOT ${_COUNTER} EQUAL 0)
            list(APPEND _SOURCES ${_ARG})
        endif()
        math(EXPR _COUNTER "${_COUNTER} + 1")
    endforeach()

    add_executable(${_TARGET} ${_SOURCES})

    if(BB_HAVE_LTO AND CMAKE_BUILD_TYPE STREQUAL "Release")
        set_target_properties(${_TARGET} PROPERTIES
            INTERPROCEDURAL_OPTIMIZATION TRUE
        )
    endif()

    if (CMAKE_BUILD_TYPE STREQUAL "Lint")
        set_target_properties(${_TARGET} PROPERTIES C_CLANG_TIDY
            "clang-tidy;--checks=${BB_CLANG_TIDY_C_CHECKS}")
        set_target_properties(${_TARGET} PROPERTIES CXX_CLANG_TIDY
            "clang-tidy;--checks=${BB_CLANG_TIDY_CXX_CHECKS}")
        set_target_properties(${_TARGET} PROPERTIES C_INCLUDE_WHAT_YOU_USE iwyu)
        set_target_properties(${_TARGET} PROPERTIES CXX_INCLUDE_WHAT_YOU_USE iwyu)
    endif()
endfunction()

function(bb_add_test _TARGET _SRC)
    if (NOT ${CMAKE_BUILD_TYPE} STREQUAL Coverage
        AND NOT ${CMAKE_BUILD_TYPE} STREQUAL Lint
    )
        return()
    endif()

    add_executable(${_TARGET} ${_SRC})
    set_target_properties(${_TARGET} PROPERTIES
        C_STANDARD 99
        C_EXTENSIONS OFF
        POSITION_INDEPENDENT_CODE 1
    )

    get_filename_component(_EXT ${_SRC} EXT)

    if (_EXT STREQUAL .c)
        target_compile_options(${_TARGET} PRIVATE ${BB_TEST_C_COMPILE_OPTIONS})
        # set(_TEST_FRAMEWORK_INCLUDE_DIRS ${CMOCKA_INCLUDE_DIRS})
        set(_TEST_FRAMEWORK_LIBS cmocka::cmocka)
    else()
        target_compile_options(${_TARGET} PRIVATE
         ${BB_TEST_CXX_COMPILE_OPTIONS})
    endif()

    target_include_directories(${_TARGET} PRIVATE
     ${_TEST_FRAMEWORK_INCLUDE_DIRS} ${BB_TEST_INCLUDE_DIRECTORIES})

    target_link_libraries(
        ${_TARGET}
        ${_TEST_FRAMEWORK_LIBS}
        "-fprofile-arcs -ftest-coverage"
        ${BB_TEST_LINK_LIBRARIES}
    )

    if (${CMAKE_BUILD_TYPE} STREQUAL Lint)
        set_target_properties(${_TARGET} PROPERTIES C_CLANG_TIDY
            "clang-tidy;--checks=${BB_CLANG_TIDY_C_CHECKS}")
        set_target_properties(${_TARGET} PROPERTIES CXX_CLANG_TIDY
            "clang-tidy;--checks=${BB_CLANG_TIDY_CXX_CHECKS}")
        set_target_properties(${_TARGET} PROPERTIES C_INCLUDE_WHAT_YOU_USE iwyu)
        set_target_properties(${_TARGET} PROPERTIES CXX_INCLUDE_WHAT_YOU_USE iwyu)
    endif()
    if (${CMAKE_BUILD_TYPE} STREQUAL Coverage)
        add_test(
            NAME    ${_TARGET}
            COMMAND ./${_TARGET}
        )
    endif()
endfunction()

# bb_add_coverage(<target> EXCLUDE <exclude1>[ exclude2[ ...]] DEPS <dep1>[ <dep2>[ ...]])
function(bb_add_coverage)
    if (NOT ${CMAKE_BUILD_TYPE} STREQUAL Coverage)
        return()
    endif()

    set(multiValueArgs EXCLUDE DEPS)

    cmake_parse_arguments(_BB_ADD_COVERAGE "" "" "${multiValueArgs}"
        ${ARGN})

    list(GET _BB_ADD_COVERAGE_UNPARSED_ARGUMENTS 0 _TARGET)

    setup_target_for_coverage_lcov(
        NAME         ${_TARGET}
        EXECUTABLE   ctest -V
        DEPENDENCIES ${_BB_ADD_COVERAGE_DEPS}
        BASE_DIRECTORY ${CMAKE_BINARY_DIR}
        EXCLUDE ${_BB_ADD_COVERAGE_EXCLUDE}
        LCOV_ARGS --rc lcov_branch_coverage=1
        GENHTML_ARGS --branch-coverage
    )
endfunction()
