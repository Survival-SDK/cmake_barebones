# bb_process_type_availability(
#   LANG {C|C++}
#   TYPE <type>
#   [HEADERS <header>[ <header>[ ...]]]
#   WHERE <header>
#   [QUIET]
# )
function(bb_process_type_availability)
    set(options QUIET)
    set(oneValueArgs LANG TYPE WHERE)
    set(multiValueArgs HEADERS)

    cmake_parse_arguments(_BB_PROCESS_TYPE_AVAILABILITY "${options}"
     "${oneValueArgs}" "${multiValueArgs}" ${ARGN})

    if(DEFINED ${_BB_PROCESS_TYPE_AVAILABILITY_WHERE})
        return()
    endif()

    if (_BB_PROCESS_TYPE_AVAILABILITY_LANG STREQUAL C)
        set(_BB_COMPILER ${CMAKE_C_COMPILER})
        set(_BB_FILENAME "${CMAKE_BINARY_DIR}/trycompile.c")
    elseif (_BB_PROCESS_TYPE_AVAILABILITY_LANG STREQUAL C++)
        set(_BB_COMPILER ${CMAKE_CXX_COMPILER})
        set(_BB_FILENAME "${CMAKE_BINARY_DIR}/trycompile.cpp")
    endif()

    if(NOT ${_BB_PROCESS_TYPE_AVAILABILITY_QUIET})
        message(STATUS
            "Looking header file for ${_BB_PROCESS_TYPE_AVAILABILITY_TYPE}")
    endif()

    file(WRITE ${_BB_FILENAME} "${_BB_PROCESS_TYPE_AVAILABILITY_TYPE} test;")
    execute_process(
        COMMAND ${_BB_COMPILER} ${CMAKE_C_FLAGS} -c ${_BB_FILENAME}
        WORKING_DIRECTORY ${CMAKE_BINARY_DIR}
        RESULT_VARIABLE BB_EXECUTE_RESULT
        ERROR_VARIABLE BB_EXECUTE_ERROR
        OUTPUT_QUIET
    )
    file (REMOVE ${_BB_FILENAME})

    if (${BB_EXECUTE_RESULT} EQUAL 0)
        if(NOT ${_BB_PROCESS_TYPE_AVAILABILITY_QUIET})
            message(STATUS
                "Looking header file for ${_BB_PROCESS_TYPE_AVAILABILITY_TYPE} - not needed")
        endif()
        set(${_BB_PROCESS_TYPE_AVAILABILITY_WHERE} "" CACHE STRING "")
        return()
    endif()

    foreach(_HEADER IN LISTS _BB_PROCESS_TYPE_AVAILABILITY_HEADERS)
        file(WRITE ${_BB_FILENAME}
            "#include <${_HEADER}>\n${_BB_PROCESS_TYPE_AVAILABILITY_TYPE} test;")
        execute_process(
            COMMAND ${_BB_COMPILER} ${CMAKE_C_FLAGS} -c ${_BB_FILENAME}
            WORKING_DIRECTORY ${CMAKE_BINARY_DIR}
            RESULT_VARIABLE BB_EXECUTE_RESULT
            ERROR_VARIABLE BB_EXECUTE_ERROR
            OUTPUT_QUIET
        )
        file (REMOVE ${_BB_FILENAME})
        if (${BB_EXECUTE_RESULT} EQUAL 0)
            if(NOT ${_BB_PROCESS_TYPE_AVAILABILITY_QUIET})
                message(STATUS
                    "Looking header file for ${_BB_PROCESS_TYPE_AVAILABILITY_TYPE} - ${_HEADER}")
            endif()
            set(${_BB_PROCESS_TYPE_AVAILABILITY_WHERE} ${_HEADER}
                CACHE STRING "")
            return()
        endif()
    endforeach()

    if(NOT ${_BB_PROCESS_TYPE_AVAILABILITY_QUIET})
        message(STATUS
            "Looking header file for ${_BB_PROCESS_TYPE_AVAILABILITY_TYPE} - not found")
    endif()
endfunction()

# bb_get_type_size(
#   LANG {C|C++}
#   TYPE <type>
#   [HEADER <header>]
#   SIZE <size>
#   [QUIET]
# )
function(bb_get_type_size)
    set(options QUIET)
    set(oneValueArgs LANG TYPE SIZE HEADER)

    cmake_parse_arguments(_BB_PROCESS_TYPE_SIZE "${options}"
     "${oneValueArgs}" "" ${ARGN})

    if(DEFINED ${_BB_PROCESS_TYPE_SIZE_SIZE})
        return()
    endif()

    if (_BB_PROCESS_TYPE_SIZE_LANG STREQUAL C)
        set(_BB_COMPILER ${CMAKE_C_COMPILER})
        set(_BB_FILENAME "${CMAKE_BINARY_DIR}/trycompile.c")
    elseif (_BB_PROCESS_TYPE_SIZE_LANG STREQUAL C++)
        set(_BB_COMPILER ${CMAKE_CXX_COMPILER})
        set(_BB_FILENAME "${CMAKE_BINARY_DIR}/trycompile.cpp")
    endif()

    if(NOT ${_BB_PROCESS_TYPE_SIZE_QUIET})
        message(STATUS
            "Checking size of ${_BB_PROCESS_TYPE_SIZE_TYPE}")
    endif()

    if (_BB_PROCESS_TYPE_SIZE_HEADER)
        file(WRITE ${_BB_FILENAME}
        "#include <${_BB_PROCESS_TYPE_SIZE_HEADER}>\n"
    )
    endif()
    file(APPEND ${_BB_FILENAME}
        "int main(int argc, char **argv) {
            return sizeof(${_BB_PROCESS_TYPE_SIZE_TYPE});
        }"
    )
    execute_process(
        COMMAND ${_BB_COMPILER} ${CMAKE_C_FLAGS} -c ${_BB_FILENAME} -o test
        WORKING_DIRECTORY ${CMAKE_BINARY_DIR}
        RESULT_VARIABLE BB_EXECUTE_RESULT
        OUTPUT_QUIET
    )
    file (REMOVE ${_BB_FILENAME})

    if (${BB_EXECUTE_RESULT} EQUAL 0)
        execute_process(
            COMMAND test
            WORKING_DIRECTORY ${CMAKE_BINARY_DIR}
            RESULT_VARIABLE BB_EXECUTE_RESULT
            OUTPUT_QUIET
        )

        if(NOT ${_BB_PROCESS_TYPE_SIZE_QUIET})
            message(STATUS
                "Checking size of ${_BB_PROCESS_TYPE_SIZE_TYPE} - ${BB_EXECUTE_RESULT}")
        endif()
        set(${_BB_PROCESS_TYPE_SIZE_TYPE} ${BB_EXECUTE_RESULT} CACHE STRING "")
        file (REMOVE test)
        return()
    endif()
    file (REMOVE test)

    if(NOT ${_BB_PROCESS_TYPE_SIZE_QUIET})
        message(STATUS
            "Checking size of ${_BB_PROCESS_TYPE_SIZE_TYPE} - N/A")
    endif()
endfunction()