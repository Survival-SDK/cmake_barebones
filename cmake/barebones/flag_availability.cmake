# bb_process_flag_availability(
#   LANG {C|C++}
#   FLAG <flag>
#   FALLBACK <fallback_flag>
#   OPTION <compile_option>
#   [QUIET]
# )
function(bb_process_flag_availability)
    set(options QUIET)
    set(oneValueArgs LANG FLAG FALLBACK OPTION)

    cmake_parse_arguments(_BB_PROCESS_FLAG_AVAILABILITY "${options}"
     "${oneValueArgs}" "" ${ARGN})

    if(DEFINED ${_BB_PROCESS_FLAG_AVAILABILITY_OPTION})
        return()
    endif()

    if (_BB_PROCESS_FLAG_AVAILABILITY_LANG STREQUAL C)
        set(_BB_COMPILER ${CMAKE_C_COMPILER})
        set(_BB_FILENAME "${CMAKE_BINARY_DIR}/trycompile.c")
    elseif (_BB_PROCESS_FLAG_AVAILABILITY_LANG STREQUAL C++)
        set(_BB_COMPILER ${CMAKE_CXX_COMPILER})
        set(_BB_FILENAME "${CMAKE_BINARY_DIR}/trycompile.cpp")
    endif()

    if(NOT ${_BB_PROCESS_FLAG_AVAILABILITY_QUIET})
        message(STATUS
            "Checking for ${_BB_PROCESS_FLAG_AVAILABILITY_LANG} compiler accepts ${_BB_PROCESS_FLAG_AVAILABILITY_FLAG}")
    endif()

    string(REPLACE " " ";" BB_FLAG_LIST ${_BB_PROCESS_FLAG_AVAILABILITY_FLAG})

    file(WRITE ${_BB_FILENAME} "int main(int argc, char **argv) {return 0;}")
    execute_process(
        COMMAND ${_BB_COMPILER} ${CMAKE_C_FLAGS} ${BB_FLAG_LIST} -c
         ${_BB_FILENAME}
        WORKING_DIRECTORY ${CMAKE_BINARY_DIR}
        RESULT_VARIABLE BB_EXECUTE_RESULT
        ERROR_VARIABLE BB_EXECUTE_ERROR
        OUTPUT_QUIET
    )
    file (REMOVE ${_BB_FILENAME})

    set(_BB_HAVE_FLAG OFF)
    if (${BB_EXECUTE_RESULT} EQUAL 0) # exitcode 0 - gcc success or
                                   # Clang/TCC warning
        string(REGEX MATCH "warning: unsupported option|unknown warning option"
            _REGEX_MATCH_UNSUPPORTED "${BB_EXECUTE_ERROR}")
        if (NOT _REGEX_MATCH_UNSUPPORTED)
            set(_BB_HAVE_FLAG ON)
        endif()
    endif()

    if (${_BB_HAVE_FLAG})
        if(NOT ${_BB_PROCESS_FLAG_AVAILABILITY_QUIET})
            message(STATUS
                "Checking for ${_BB_PROCESS_FLAG_AVAILABILITY_LANG} compiler accepts ${_BB_PROCESS_FLAG_AVAILABILITY_FLAG} - yes")
        endif()
        if (NOT ${CMAKE_BUILD_TYPE} STREQUAL Lint AND NOT ${CMAKE_BUILD_TYPE} STREQUAL Iwyu)
            set(${_BB_PROCESS_FLAG_AVAILABILITY_OPTION} ${BB_FLAG_LIST}
                CACHE STRING "")
            return()
        endif()
    else()
        if(NOT ${_BB_PROCESS_FLAG_AVAILABILITY_QUIET})
            message(STATUS
                "Checking for ${_BB_PROCESS_FLAG_AVAILABILITY_LANG} compiler accepts ${_BB_PROCESS_FLAG_AVAILABILITY_FLAG} - no")
        endif()
        set(${_BB_PROCESS_FLAG_AVAILABILITY_OPTION}
            ${_BB_PROCESS_FLAG_AVAILABILITY_FALLBACK} CACHE STRING "")
        return()
    endif()

    if (${CMAKE_BUILD_TYPE} STREQUAL Lint)
        if(NOT ${_BB_PROCESS_FLAG_AVAILABILITY_QUIET})
            message(STATUS
                "Checking for clang-tidy accepts ${_BB_PROCESS_FLAG_AVAILABILITY_FLAG}")
        endif()
        file(WRITE ${_BB_FILENAME} "int main(int argc, char **argv) {return 0;}")
        execute_process(
            COMMAND clang-tidy ${_BB_FILENAME} -- ${CMAKE_C_FLAGS} ${BB_FLAG_LIST} -Werror=unknown-warning-option
            WORKING_DIRECTORY ${CMAKE_BINARY_DIR}
            RESULT_VARIABLE BB_EXECUTE_RESULT
            OUTPUT_QUIET
            ERROR_QUIET
        )
        file (REMOVE ${_BB_FILENAME})
        if (${BB_EXECUTE_RESULT} EQUAL 0)
            if(NOT ${_BB_PROCESS_FLAG_AVAILABILITY_QUIET})
                message(STATUS
                    "Checking for clang-tidy accepts ${_BB_PROCESS_FLAG_AVAILABILITY_FLAG} - yes")
            endif()
            set(${_BB_PROCESS_FLAG_AVAILABILITY_OPTION} ${BB_FLAG_LIST}
                CACHE STRING "")
        else()
            if(NOT ${_BB_PROCESS_FLAG_AVAILABILITY_QUIET})
                message(STATUS
                    "Checking for clang-tidy accepts ${_BB_PROCESS_FLAG_AVAILABILITY_FLAG} - no")
            endif()
            set(${_BB_PROCESS_FLAG_AVAILABILITY_OPTION}
                ${_BB_PROCESS_FLAG_AVAILABILITY_FALLBACK} CACHE STRING "")
            return()
        endif()
        return()
    elseif (${CMAKE_BUILD_TYPE} STREQUAL Iwyu)
        if(NOT ${_BB_PROCESS_FLAG_AVAILABILITY_QUIET})
            message(STATUS
                "Checking for include-what-you-use accepts ${_BB_PROCESS_FLAG_AVAILABILITY_FLAG}")
        endif()

        file(WRITE ${_BB_FILENAME} "int main(int argc, char **argv) {return 0;}")
        execute_process(
            COMMAND iwyu ${CMAKE_C_FLAGS} ${BB_FLAG_LIST} ${_BB_FILENAME}
            WORKING_DIRECTORY ${CMAKE_BINARY_DIR}
            RESULT_VARIABLE BB_EXECUTE_RESULT
            ERROR_VARIABLE BB_EXECUTE_ERROR
            OUTPUT_QUIET
        )
        file (REMOVE ${_BB_FILENAME})

        set(_BB_HAVE_FLAG OFF)
        if (${BB_EXECUTE_RESULT} EQUAL 2)
            string(REGEX MATCH "warning: unknown warning option"
                _REGEX_MATCH_UNSUPPORTED "${BB_EXECUTE_ERROR}")

            if (NOT _REGEX_MATCH_UNSUPPORTED)
                set(_BB_HAVE_FLAG ON)
            endif()
        endif()

        if (${_BB_HAVE_FLAG})
            if(NOT ${_BB_PROCESS_FLAG_AVAILABILITY_QUIET})
                message(STATUS
                    "Checking for include-what-you-use accepts ${_BB_PROCESS_FLAG_AVAILABILITY_FLAG} - yes")
            endif()
            set(${_BB_PROCESS_FLAG_AVAILABILITY_OPTION} ${BB_FLAG_LIST}
                CACHE STRING "")
        else()
            if(NOT ${_BB_PROCESS_FLAG_AVAILABILITY_QUIET})
                message(STATUS
                    "Checking for include-what-you-use accepts ${_BB_PROCESS_FLAG_AVAILABILITY_FLAG} - no")
            endif()
            set(${_BB_PROCESS_FLAG_AVAILABILITY_OPTION}
                ${_BB_PROCESS_FLAG_AVAILABILITY_FALLBACK} CACHE STRING "")
        endif()
    endif()
endfunction()

# bb_process_common_flag_availability(
#   FLAG <flag>
#   FALLBACK <fallback_flag>
#   OPTION <compile_option>
#   [QUIET]
# )
function(bb_process_common_flag_availability)
    set(options QUIET)
    set(oneValueArgs FLAG FALLBACK OPTION)

    cmake_parse_arguments(_BB_PROCESS_COMMON_FLAG_AVAILABILITY "${options}"
     "${oneValueArgs}" "" ${ARGN})

    if (${_BB_PROCESS_COMMON_FLAG_AVAILABILITY_QUIET})
        set(_QUIET QUIET)
    else()
        unset(_QUIET)
    endif()

    if (DEFINED CMAKE_C_COMPILER_LOADED)
        bb_process_flag_availability(
            LANG C
            FLAG ${_BB_PROCESS_COMMON_FLAG_AVAILABILITY_FLAG}
            FALLBACK ${_BB_PROCESS_COMMON_FLAG_AVAILABILITY_FALLBACK}
            OPTION ${_BB_PROCESS_COMMON_FLAG_AVAILABILITY_OPTION}
            ${_QUIET}
        )
    else (DEFINED CMAKE_CXX_COMPILER_LOADED)
        bb_process_flag_availability(
            LANG C++
            FLAG ${_BB_PROCESS_COMMON_FLAG_AVAILABILITY_FLAG}
            FALLBACK ${_BB_PROCESS_COMMON_FLAG_AVAILABILITY_FALLBACK}
            OPTION ${_BB_PROCESS_COMMON_FLAG_AVAILABILITY_OPTION}
            ${_QUIET}
        )
    endif()

    set(${_BB_PROCESS_CXX_FLAG_AVAILABILITY_OPTION}
        ${${_BB_PROCESS_CXX_FLAG_AVAILABILITY_OPTION}} PARENT_SCOPE)
endfunction()

# bb_process_c_flag_availability(
#   FLAG <flag>
#   FALLBACK <fallback_flag>
#   OPTION <compile_option>
#   [QUIET]
# )
function(bb_process_c_flag_availability)
    set(options QUIET)
    set(oneValueArgs FLAG FALLBACK OPTION)

    cmake_parse_arguments(_BB_PROCESS_C_FLAG_AVAILABILITY "${options}"
     "${oneValueArgs}" "" ${ARGN})

    if (${_BB_PROCESS_C_FLAG_AVAILABILITY_QUIET})
        set(_QUIET QUIET)
    else()
        unset(_QUIET)
    endif()

    if (CMAKE_C_COMPILER_LOADED)
        bb_process_flag_availability(
            LANG C
            FLAG ${_BB_PROCESS_C_FLAG_AVAILABILITY_FLAG}
            FALLBACK ${_BB_PROCESS_C_FLAG_AVAILABILITY_FALLBACK}
            OPTION ${_BB_PROCESS_C_FLAG_AVAILABILITY_OPTION}
            ${_QUIET}
        )
    endif()

    set(${_BB_PROCESS_CXX_FLAG_AVAILABILITY_OPTION}
        ${${_BB_PROCESS_CXX_FLAG_AVAILABILITY_OPTION}} PARENT_SCOPE)
endfunction()

# bb_process_cxx_flag_availability(
#   FLAG <flag>
#   FALLBACK <fallback_flag>
#   OPTION <compile_option>
#   [QUIET]
# )
function(bb_process_cxx_flag_availability)
    set(options QUIET)
    set(oneValueArgs FLAG FALLBACK OPTION)

    cmake_parse_arguments(_BB_PROCESS_CXX_FLAG_AVAILABILITY "${options}"
     "${oneValueArgs}" "" ${ARGN})

    if (${_BB_PROCESS_CXX_FLAG_AVAILABILITY_QUIET})
        set(_QUIET QUIET)
    else()
        unset(_QUIET)
    endif()

    if (CMAKE_C_COMPILER_LOADED)
        bb_process_flag_availability(
            LANG C++
            FLAG ${_BB_PROCESS_CXX_FLAG_AVAILABILITY_FLAG}
            FALLBACK ${_BB_PROCESS_CXX_FLAG_AVAILABILITY_FALLBACK}
            OPTION ${_BB_PROCESS_CXX_FLAG_AVAILABILITY_OPTION}
            ${_QUIET}
        )
    endif()

    set(${_BB_PROCESS_CXX_FLAG_AVAILABILITY_OPTION}
        ${${_BB_PROCESS_CXX_FLAG_AVAILABILITY_OPTION}} PARENT_SCOPE)
endfunction()
