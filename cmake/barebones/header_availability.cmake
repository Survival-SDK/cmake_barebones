# bb_process_header_availability(
#   LANG {C|C++}
#   HEADER <header>
#   RESULT <result>
#   [QUIET]
# )
function(bb_process_header_availability)
    set(options QUIET)
    set(oneValueArgs LANG HEADER RESULT)

    cmake_parse_arguments(_BB_PROCESS_HEADER_AVAILABILITY "${options}"
     "${oneValueArgs}" "" ${ARGN})

    if(DEFINED ${_BB_PROCESS_HEADER_AVAILABILITY_WHERE})
        return()
    endif()

    if (_BB_PROCESS_HEADER_AVAILABILITY_LANG STREQUAL C)
        set(_BB_COMPILER ${CMAKE_C_COMPILER})
        set(_BB_FILENAME "${CMAKE_BINARY_DIR}/trycompile.c")
    elseif (_BB_PROCESS_HEADER_AVAILABILITY_LANG STREQUAL C++)
        set(_BB_COMPILER ${CMAKE_CXX_COMPILER})
        set(_BB_FILENAME "${CMAKE_BINARY_DIR}/trycompile.cpp")
    endif()

    if(NOT ${_BB_PROCESS_HEADER_AVAILABILITY_QUIET})
        message(STATUS "Checking for ${_BB_PROCESS_HEADER_AVAILABILITY_HEADER}")
    endif()

    file(WRITE ${_BB_FILENAME} "
        #include <${_BB_PROCESS_HEADER_AVAILABILITY_HEADER}>\n
        int test;
    ")
    execute_process(
        COMMAND ${_BB_COMPILER} ${CMAKE_C_FLAGS} -c ${_BB_FILENAME}
        WORKING_DIRECTORY ${CMAKE_BINARY_DIR}
        RESULT_VARIABLE BB_EXECUTE_RESULT
        ERROR_VARIABLE BB_EXECUTE_ERROR
        OUTPUT_QUIET
    )
    file (REMOVE ${_BB_FILENAME})

    if (${BB_EXECUTE_RESULT} EQUAL 0)
        if(NOT ${_BB_PROCESS_HEADER_AVAILABILITY_QUIET})
            message(STATUS
                "Checking for ${_BB_PROCESS_HEADER_AVAILABILITY_HEADER} - yes")
        endif()
        set(${_BB_PROCESS_HEADER_AVAILABILITY_RESULT} TRUE CACHE STRING "")
        return()
    endif()

    if(NOT ${_BB_PROCESS_HEADER_AVAILABILITY_QUIET})
        message(STATUS
            "Checking for ${_BB_PROCESS_HEADER_AVAILABILITY_HEADER} - no")
    endif()
    set(${_BB_PROCESS_HEADER_AVAILABILITY_RESULT} FALSE CACHE STRING "")
endfunction()