set(CMAKE_CXX_FLAGS_IWYU ${CMAKE_CXX_FLAGS_DEBUG} CACHE STRING
    "Flags used by the C++ compiler during maintainer builds."
    FORCE)
set(CMAKE_C_FLAGS_IWYU ${CMAKE_C_FLAGS_IWYU} CACHE STRING
    "Flags used by the C compiler during maintainer builds."
    FORCE)
set(CMAKE_EXE_LINKER_FLAGS_IWYU
    ${CMAKE_EXE_LINKER_FLAGS_IWYU} CACHE STRING
    "Flags used for linking binaries during maintainer builds."
    FORCE)
set(CMAKE_SHARED_LINKER_FLAGS_IWYU
    ${CMAKE_SHARED_LINKER_FLAGS_IWYU} CACHE STRING
    "Flags used by the shared libraries linker during maintainer builds."
    FORCE)

if (${CMAKE_BUILD_TYPE} STREQUAL Iwyu)
    find_package(cmocka)
endif()

mark_as_advanced(
    CMAKE_CXX_FLAGS_IWYU
    CMAKE_C_FLAGS_IWYU
    CMAKE_EXE_LINKER_FLAGS_IWYU
    CMAKE_SHARED_LINKER_FLAGS_IWYU
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
