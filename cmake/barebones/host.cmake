function(bb_get_triplet RESULT)
    if(DEFINED ${RESULT})
        return()
    endif()

    message(STATUS "Detecting host triplet")

    if (CMAKE_C_COMPILER)
        set(_BB_COMPILER ${CMAKE_C_COMPILER})
    elseif (CMAKE_CXX_COMPILER)
        set(_BB_COMPILER ${CMAKE_CXX_COMPILER})
    endif()

    if (_BB_COMPILER)
        execute_process(
            COMMAND ${_BB_COMPILER} -dumpmachine
            WORKING_DIRECTORY ${CMAKE_BINARY_DIR}
            RESULT_VARIABLE BB_EXECUTE_RESULT
            OUTPUT_VARIABLE _VENDORED_TRIPLET
        )
    else()
        set(BB_EXECUTE_RESULT 1)
    endif()

    if (NOT ${BB_EXECUTE_RESULT} EQUAL 0)
        execute_process(
            COMMAND gcc -dumpmachine
            WORKING_DIRECTORY ${CMAKE_BINARY_DIR}
            RESULT_VARIABLE BB_EXECUTE_RESULT
            OUTPUT_VARIABLE _VENDORED_TRIPLET
        )
    endif()

    if (NOT ${BB_EXECUTE_RESULT} EQUAL 0)
        execute_process(
            COMMAND clang -dumpmachine
            WORKING_DIRECTORY ${CMAKE_BINARY_DIR}
            RESULT_VARIABLE BB_EXECUTE_RESULT
            OUTPUT_VARIABLE _VENDORED_TRIPLET
        )
    endif()

    if (NOT ${BB_EXECUTE_RESULT} EQUAL 0)
        message(STATUS "Detecting host triplet - unknown")
        return()
    endif()

    string(REPLACE "\n" "" _VENDORED_TRIPLET ${_VENDORED_TRIPLET})
    string(REPLACE "-" ";" _VENDORED_TRIPLET ${_VENDORED_TRIPLET})
    list(GET _VENDORED_TRIPLET 0 _ARCH)
    list(GET _VENDORED_TRIPLET -2 _OS)
    list(GET _VENDORED_TRIPLET -1 _ABI)

    message(STATUS "Detecting host triplet - ${_ARCH}-${_OS}-${_ABI}")

    set(${RESULT} "${_ARCH}-${_OS}-${_ABI}" CACHE STRING "")
endfunction()
