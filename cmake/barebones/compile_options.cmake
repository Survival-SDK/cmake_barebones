# bb_add_compile_options(LANG {C|C++} OPTIONS <compiler_options_var>)
function (bb_add_compile_options)
    set(oneValueArgs LANG OPTIONS)

    cmake_parse_arguments(_BB_ADD_COMPILE_OPTIONS "" "${oneValueArgs}" "" ${ARGN})

    if (_BB_ADD_COMPILE_OPTIONS_LANG STREQUAL C
        AND (CMAKE_C_COMPILER_ID STREQUAL GNU OR CMAKE_C_COMPILER_ID STREQUAL Clang)
        OR _BB_ADD_COMPILE_OPTIONS_LANG STREQUAL C++
        AND (CMAKE_CXX_COMPILER_ID STREQUAL GNU OR CMAKE_CXX_COMPILER_ID STREQUAL Clang)
    )
        bb_process_common_flag_availability(BB_FMAX_ERRORS_100 "-fmax-errors=100" "" BB_QUIET)

        bb_process_common_flag_availability(BB_FMAX_ERRORS_100
            "-fmax-errors=100" ""
        )

        set(
            ${_BB_ADD_COMPILE_OPTIONS_OPTIONS}
            "${${_BB_ADD_COMPILE_OPTIONS_OPTIONS}};-Wall -Wextra -Wshadow
            -Wunused-result -Wno-unused-parameter -Wno-sign-conversion
            ${BB_FMAX_ERRORS_100}"
            PARENT_SCOPE
        )
        if(${BB_WERROR})
            set(${_BB_ADD_COMPILE_OPTIONS_OPTIONS}
                "${${_BB_ADD_COMPILE_OPTIONS_OPTIONS}};-Werror" PARENT_SCOPE)
        endif()
    endif()
endfunction()
