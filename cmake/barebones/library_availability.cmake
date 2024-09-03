# bb_find_library(
#   VAR_PREFIX <PREFIX>
#   NAME <name>
#   FILENAMES <filename1>[ <filename2>[ ...]]
#   [PATHS <path1>[ <path2>[ ...]]]
#   [COMPILER_OPTIONS <option1>[ <option2>[ ...]]]
#   [REQUIRED]
# )
function(bb_find_library)
    set(options REQUIRED)
    set(oneValueArgs VAR_PREFIX NAME)
    set(multiValueArgs FILENAMES PATHS COMPILER_OPTIONS)
    cmake_parse_arguments(_BB_FIND_LIBRARY "${options}" "${oneValueArgs}"
     "${multiValueArgs}" ${ARGN})

    if (DEFINED ${_BB_FIND_LIBRARY_VAR_PREFIX}_LIBRARY)
        return()
    endif()

    if (DEFINED CMAKE_C_COMPILER_LOADED)
        set(_BB_COMPILER ${CMAKE_C_COMPILER})
        set(_BB_FILENAME "${CMAKE_BINARY_DIR}/trycompile.c")
    else (DEFINED CMAKE_CXX_COMPILER_LOADED)
        set(_BB_COMPILER ${CMAKE_CXX_COMPILER})
        set(_BB_FILENAME "${CMAKE_BINARY_DIR}/trycompile.cpp")
    endif()

    message(STATUS "Searching for library ${_BB_FIND_LIBRARY_NAME}")

    if (_BB_FIND_LIBRARY_PATHS)
        set(_HINTS "HINTS ${_BB_FIND_LIBRARY_PATHS}")
    endif()

    find_library(${_BB_FIND_LIBRARY_VAR_PREFIX}
        NAMES ${_BB_FIND_LIBRARY_FILENAMES}
        ${_HINTS}
    )

    set(${_BB_FIND_LIBRARY_VAR_PREFIX}_FOUND FALSE)
    if (${_BB_FIND_LIBRARY_VAR_PREFIX})
        set(${_BB_FIND_LIBRARY_VAR_PREFIX}_FOUND TRUE)
        set(${_BB_FIND_LIBRARY_VAR_PREFIX}_LIBRARY ${${_BB_FIND_LIBRARY_VAR_PREFIX}} CACHE STRING "")
    else()
        foreach(_OPTION IN LISTS _BB_FIND_LIBRARY_COMPILER_OPTIONS)
            unset(${_BB_FIND_LIBRARY_VAR_PREFIX}_LIBRARY CACHE)
            bb_process_common_flag_availability(
                FLAG ${_OPTION}
                FALLBACK ""
                OPTION ${_BB_FIND_LIBRARY_VAR_PREFIX}_LIBRARY
                QUIET
            )
            if (NOT ${_BB_FIND_LIBRARY_VAR_PREFIX}_LIBRARY STREQUAL "")
                set(${_BB_FIND_LIBRARY_VAR_PREFIX}_FOUND TRUE)
                break()
            endif()
        endforeach()
    endif()

    if (${_BB_FIND_LIBRARY_VAR_PREFIX}_FOUND)
        message(STATUS "Searching for library ${_BB_FIND_LIBRARY_NAME} - ${${_BB_FIND_LIBRARY_VAR_PREFIX}_LIBRARY}")
    else()
        if (_BB_FIND_LIBRARY_REQUIRED)
            set(_MSGTYPE FATAL_ERROR)
        else()
            set(_MSGTYPE STATUS)
        endif()
        message(${_MSGTYPE} "Searching for library ${_BB_FIND_LIBRARY_NAME} - not found")
    endif()
endfunction()
