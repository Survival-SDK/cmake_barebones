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

function (bb_add_iwyu_mapping_file _TARGET _MAPPING_FILE)
    get_target_property(_C_INCLUDE_WHAT_YOU_USE ${_TARGET}
        C_INCLUDE_WHAT_YOU_USE)
    if (NOT "${_C_INCLUDE_WHAT_YOU_USE}" STREQUAL
        _C_INCLUDE_WHAT_YOU_USE-NOTFOUND
    )
        set_target_properties(${_TARGET} PROPERTIES C_INCLUDE_WHAT_YOU_USE
            "${_C_INCLUDE_WHAT_YOU_USE};-Xiwyu;--mapping_file=${_MAPPING_FILE}")
    endif()

    get_target_property(_CXX_INCLUDE_WHAT_YOU_USE ${_TARGET}
        CXX_INCLUDE_WHAT_YOU_USE)
    if (NOT "${_CXX_INCLUDE_WHAT_YOU_USE}" STREQUAL
        _CXX_INCLUDE_WHAT_YOU_USE-NOTFOUND
    )
        set_target_properties(${_TARGET} PROPERTIES CXX_INCLUDE_WHAT_YOU_USE
            "${_CXX_INCLUDE_WHAT_YOU_USE};-Xiwyu;--mapping_file=${_MAPPING_FILE}")
    endif()
endfunction()
